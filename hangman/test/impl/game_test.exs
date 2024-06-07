defmodule Hangman.Impl.GameTest do

  use ExUnit.Case

  alias Hangman.Impl.Game

  test "should create a new game" do
    game = Game.new_game("life")

    assert game.turns_left == 7
    assert game.game_state == :initializing
    assert game.letters == ["l", "i", "f", "e"]
    assert game.used == MapSet.new()
  end

  test "should not change state when state is won | lost" do
    for state <- [ :won, :lost ] do
      game = Game.new_game()
      game = %{ game | game_state: state }
      { new_game, _tally } = Game.make_move(game, "x")

      assert game == new_game
    end
  end

  test "should return already used when guess an previous used letter" do
    game = Game.new_game()
    game = %{ game | used: MapSet.new([ "a" ]) }
    { new_game, _tally } = Game.make_move(game, "a")

    assert new_game.game_state == :already_used
  end


end
