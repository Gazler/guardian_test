defmodule GuardianTest.PageController do
  use Phoenix.Controller

  plug Guardian, strategies: [password: PasswordStrategy],
                 serializer: PasswordStrategy
  plug :action

  def index(conn, _params) do
    render conn, "index.html", user: user(conn)
  end

  defp user(conn) do
    Guardian.get_user(conn, :user)
  end
end
