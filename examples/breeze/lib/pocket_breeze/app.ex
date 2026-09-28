defmodule PocketBreeze.App do
  def main([]) do
    case Breeze.Server.run(
           view: PocketBreeze.Counter,
           alt_screen: false,
           logger: :replace,
           global_keybindings: [{"q", "Quit", fn _event, term -> {:stop, term} end}]
         ) do
      :ok ->
        :ok

      {:error, reason} ->
        IO.puts(:stderr, "Counter failed: #{inspect(reason)}")
        {:error, 1}
    end
  end

  def main(["--help"]) do
    IO.puts("Usage: pocket-breeze\n\nUp: increment | Down: decrement | q: quit")
    :ok
  end

  def main(_) do
    IO.puts(:stderr, "Usage: pocket-breeze [--help]")
    {:error, 2}
  end
end
