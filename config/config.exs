# This file is responsible for configuring your application
use Mix.Config

# Note this file is loaded before any dependency and is restricted
# to this project. If another project depends on this project, this
# file won't be loaded nor affect the parent project.

config :phoenix, Blather.Router,
  port: System.get_env("PORT"),
  ssl: false,
  static_assets: true,
  cookies: true,
  session_key: "_blather_key",
  session_secret: "OZ5B1F&SLD!OI2!8PRP4+P#U@HL_&&N@139MKBBBVSWZO!H6V*QDP15)4%K303QF9H51(Y",
  catch_errors: true,
  debug_errors: false,
  error_controller: Blather.PageController

config :phoenix, :code_reloader,
  enabled: false

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. Note, this must remain at the bottom of
# this file to properly merge your previous config entries.
import_config "#{Mix.env}.exs"
