defmodule GuardianTest.Mixfile do
  use Mix.Project

  def project do
    [app: :guardian_test,
     version: "0.0.1",
     elixir: "~> 1.0",
     elixirc_paths: ["lib", "web"],
     compilers: [:phoenix] ++ Mix.compilers,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [mod: {GuardianTest, []},
     applications: [:phoenix, :cowboy, :logger]]
  end

  # Specifies your project dependencies
  #
  # Type `mix help deps` for examples and options
  defp deps do
    [
      {:phoenix, "~> 0.6.1"},
      {:plug, "~> 0.8.1", override: true},
      {:guardian, github: "gazler/guardian", branch: "feat/authenticate"},
      {:cowboy, "~> 1.0"}
    ]
  end
end
