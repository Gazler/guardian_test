use Mix.Config

config :phoenix, GuardianTest.Router,
  http: [port: System.get_env("PORT") || 4001],
