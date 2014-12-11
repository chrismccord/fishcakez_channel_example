defmodule ChannelExample.GameChannel do
  use Phoenix.Channel

  def join(socket, "topic", %{"id" => user_id}) do
    IO.puts "SOCKET JOIN RECEIVED"
    # do stuff
    broadcast socket, "players:joinbroadcast", %{players: "foo"}
    reply socket, "players:join", %{players: "bar"}
    {:ok, socket}
  end
end
