defmodule Mazaryn.Wallet do

  use Ecto.Schema

  import Ecto.Changeset

 # defstruct [
  #  name: nil,
  #  password: nil,
  #  address: nil,
  #  balance: nil,
  #  pub_key: nil,
  #  priv_key: nil,
  #  tokens: nil
  #]

  #def new(name, password) do
  #  %__MODULE__{
    #  name: name,
    #  password: password
  #  }
# end

  schema "wallets" do
    field :name, :string
    field :username, :string
    field :password
    has_many(:transactions, Mazaryn.Wallet.Transaction)
    belongs_to(:user, Account.User)

    # timestamps()
  end

  @required_attrs [
    :name,
    :password
  ]

  def changeset(wallet, params \\ %{}) do
    wallet
    |> cast(params, @required_attrs)
    |> validate_required(@required_attrs)
  end
end
