defmodule Dictionary do

  alias Dictionary.Impl.WordList

  @spec random_word :: String.t
  defdelegate random_word, to: WordList

end
