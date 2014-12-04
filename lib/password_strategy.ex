defmodule PasswordStrategy do
  use Guardian.SessionSerializer

  @doc """
  This strategy will be used if this returns true.
  """
  def valid?(conn, params) do
    params["email"] && params["password"]
  end

  @doc """
  Authenticate the user.
  """
  def authenticate!(conn, params) do
    if user = User.authenticate!(email: params["email"], password: params["password"]) do
      success! conn, user
    else
      fail conn, "Invalid email or password."
    end
  end

  @doc """
  The value to store into the session.
  """
  def store(user, scope), do: user.id

  @doc """
  Find the user via the database.
  """
  def fetch(id), do: User.fetch(id)
end
