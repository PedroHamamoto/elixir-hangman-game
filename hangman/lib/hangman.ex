defmodule Hangman do
  alias Hangman.Impl.Game

  @spec new_game :: Game.t
  defdelegate new_game, to: Game
end
