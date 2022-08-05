defmodule Home.Post do
  use Ecto.Schema

  alias Home.{Follow, Like, Comment}
  alias Mazaryn.Repo
  alias Account.{Users, User}
  alias Core.PostClient
  alias __MODULE__, as: Post

  import Ecto.Changeset
  import Ecto.Query, only: [from: 2]

  require Logger

  @foreign_key_type :string
  schema "posts" do
    field(:content, :string)
    field(:media, {:array, :string}, default: [])
    field(:author, :string)
    field(:privacy, :string)
    field(:likes_count, :integer, default: 0)
    field(:gif_url, :string)
    field(:removed, :boolean, default: false)
    field(:pinned, :boolean, default: false)
    field(:profile_tags, {:array, :string}, default: [])
    has_many(:likes, Like)
    has_many(:comments, Comment)
    belongs_to(:user, Account.User)

    # timestamps()
  end

  @required_attrs [
    :content,
    :author,
    :privacy
  ]

  @optional_attrs [
    :media
  ]

  def changeset(post, params \\ %{}) do
    post
    |> cast(params, @required_attrs ++ @optional_attrs)
    |> validate_required(@required_attrs)
  end

  def create_post(changeset, after_save \\ &{:ok, &1})
  def create_post(%Ecto.Changeset{valid?: false} = changeset, _after_save), do: changeset

  def create_post(%Ecto.Changeset{} = changeset, after_save) do
    content = changeset |> Ecto.Changeset.get_field(:content)
    media = changeset |> Ecto.Changeset.get_field(:media)
    author = changeset |> Ecto.Changeset.get_field(:author)

    case Core.PostClient.create_post(author, content, media) do
      :ok ->
        %Post{content: content, author: author, media: media}
        |> after_save(after_save)

      :post_existed ->
        :post_existed

      other ->
        other
    end
  end

  defp after_save(%Post{} = post, func) do
    {:ok, _post} = func.(post)
  end

  defp after_save(error, _func), do: error

  def add_post(%Post{} = post, params \\ %{}) do
    post
    |> changeset(params)
    |> Repo.insert()
  end

  def delete_post(%Post{} = post) do
    post
    |> Repo.delete()
  end

  def update_post(%Post{} = post, params \\ %{}) do
    post
    |> changeset(params)
    |> Repo.update()
  end

  def all_posts do
    Repo.all(Post)
  end

  def posts_from_user_following(user_id) do
    user = Users.one_by_email(user_id)

    following = Users.get_following(user.id)

    Logger.info("[Posts] Getting posts from following:")

    result = Enum.map(following, fn user -> posts_from_user(user.username) end)

    Logger.info(result)

    Enum.shuffle(result)
  end

  def posts_from_user(author), do: PostClient.get_latest_posts(author)

  def posts_from_user_following_with_comments(user_id) do
    query =
      from(f in Follow,
        join: p in Post,
        as: :post,
        on: p.author == f.following_id,
        join: c in Comment,
        as: :comment,
        on: c.post_id == p.id,
        where: f.follower_id == ^user_id,
        order_by: [desc: p.date_created],
        select: [p, c]
      )

    Repo.all(query)
  end

  def posts_from_user_with_comments(user_id) do
    query =
      from(p in Post,
        join: c in Comment,
        as: :comment,
        on: c.post_id == p.id,
        where: p.author == ^user_id,
        order_by: [desc: p.date_created],
        select: [p, c]
      )

    Repo.all(query)
  end

  def posts_from_user_following_with_comments_and_likes(user_id) do
    query =
      from(f in Follow,
        join: p in Post,
        as: :post,
        on: p.author == f.following_id,
        join: c in Comment,
        as: :comment,
        on: c.post_id == p.id,
        join: l in Like,
        as: :like,
        on: l.post_id == p.id,
        where: f.follower_id == ^user_id,
        order_by: [desc: p.date_created],
        select: [p, c, l]
      )

    Repo.all(query)
  end

  def posts_from_user_with_comments_and_likes(user_id) do
    query =
      from(p in Post,
        join: c in Comment,
        as: :comment,
        on: c.post_id == p.id,
        join: l in Like,
        as: :like,
        on: l.post_id == p.id,
        where: p.author == ^user_id,
        order_by: [desc: p.date_created],
        select: [p, c, l]
      )

    Repo.all(query)
  end
end
