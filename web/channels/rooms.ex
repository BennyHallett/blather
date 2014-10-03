defmodule Blather.Channels.Rooms do
  use Phoenix.Channel

  def join(socket, "lobby", message) do
    IO.puts "JOIN: #{socket.channel}:#{socket.topic}"
    broadcast socket, "user:entered", %{ username: message["message"] || "anon" }
    { :ok, socket }
  end

  def join(socket, _private_topic, _message) do
    { :error, socket, :unauthorized }
  end

  def event(socket, "new:message", message) do
    broadcast socket, "new:message", message
    socket
  end

end
