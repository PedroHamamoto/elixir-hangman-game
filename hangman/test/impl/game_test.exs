defmodule Hangman.Impl.GameTest do

  use ExUnit.Case

  alias Hangman.Impl.Game

  test "should create a new game" do
    game = Game.new_game

    assert game.turns_left == 7
    assert game.game_state == :initializing
    assert length(game.letters) > 1
    assert game.used == MapSet.new()
  end

end
