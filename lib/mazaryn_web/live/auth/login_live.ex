defmodule MazarynWeb.LoginLive do
  use MazarynWeb, :live_view

  alias Account.User
  alias Account.Users
  alias Mazaryn.Token

  @login_schema %{
    email: [type: :string, required: true],
    password: [type: :string, required: true],
  }

  def mount(_params, _session, socket) do
    if connected?(socket), do: socket |> IO.inspect(label: 1)

    {:ok, socket}
  end

  def render(assigns) do
    IO.puts "RENDER #{inspect(self())}"
    ~H"""
    <div>
      <div>
        left part
      </div>

      <div>
        <div>
          <h4>Login</h4>
        </div>
        <div>
          <form phx-submit="login">
            <input type="text" name="email" placeholder="email" autofocus value="danilo1@gmail.com" />
            <input type="text" name="password" placeholder="Password" value="1234" autofocus />
            <button type="submit">
              Enviar
            </button>
          </form>
        </div>
      </div>
    </div>
    """
  end

  def handle_event("login", %{"email" => email, "password" => password} = session, socket) do
    with {:ok, _better_params} <- Tarams.cast(%{"email" => email, "password" => password}, @login_schema),
      %User{} = user <- Users.one_by_email(email) do
        case Users.login(user.username, password) do
          {:ok, :logged_in} ->
            token = Token.generate_and_sign!

            socket
            = socket
            |> assign(user_token: token)

            {:noreply, push_redirect(socket, to: Routes.live_path(socket, MazarynWeb.HomeLive.Index))}
          {:error, res} ->
            {:noreply, redirect(socket, to: "/login")}
        end

    end
  end
end
