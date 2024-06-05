defmodule Dictionary.Impl.WordListTest do
  alias Dictionary.Impl.WordList
  use ExUnit.Case

  test "should pick a random word" do
    assert String.length(WordList.random_word()) > 1
  end

end
