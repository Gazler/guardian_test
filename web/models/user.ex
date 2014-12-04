defmodule User do
  defstruct name: "", id: 0

  def authenticate!(opts) do
    if Keyword.get(opts, :email) == "user@example.com" && Keyword.get(opts, :password) == "password" do
      %User{name: "Example User", id: 1}
    end
  end

  def fetch(id) do
      %User{name: "Example User", id: 1}
  end
end
