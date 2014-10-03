use Mix.Config

# NOTE: To get SSL working, you will need to set:
#
#     ssl: true,
#     keyfile: System.get_env("SOME_APP_SSL_KEY_PATH"),
#     certfile: System.get_env("SOME_APP_SSL_CERT_PATH"),
#
# Where those two env variables point to a file on disk
# for the key and cert

config :phoenix, Blather.Router,
  port: System.get_env("PORT"),
  ssl: false,
  host: "example.com",
  cookies: true,
  session_key: "_blather_key",
  session_secret: "OZ5B1F&SLD!OI2!8PRP4+P#U@HL_&&N@139MKBBBVSWZO!H6V*QDP15)4%K303QF9H51(Y"

config :logger, :console,
  level: :info,
  metadata: [:request_id]

