defmodule Hangman do
  alias Hangman.Impl.Game

  @spec new_game :: Game.t
  defdelegate new_game, to: Game

  @spec make_move(Game.t, String.t) :: { Game.t, Type.tally }
  defdelegate make_move(game, guess), to: Game
end
