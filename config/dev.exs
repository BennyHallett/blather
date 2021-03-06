use Mix.Config

config :phoenix, Blather.Router,
  port: System.get_env("PORT") || 4000,
  ssl: false,
  host: "localhost",
  cookies: true,
  session_key: "_blather_key",
  session_secret: "OZ5B1F&SLD!OI2!8PRP4+P#U@HL_&&N@139MKBBBVSWZO!H6V*QDP15)4%K303QF9H51(Y",
  debug_errors: true

config :phoenix, :code_reloader,
  enabled: true

config :logger, :console,
  level: :debug


