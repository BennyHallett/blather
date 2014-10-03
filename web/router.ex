defmodule Blather.Router do
  use Phoenix.Router
  use Phoenix.Router.Socket, mount: "/ws"

  get "/", Blather.PageController, :index, as: :pages

  channel "rooms", Blather.Channels.Rooms
end
