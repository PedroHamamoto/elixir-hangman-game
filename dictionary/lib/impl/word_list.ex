defmodule Dictionary.Impl.WordList do

  def random_word() do
    word_list()
    |> Enum.random()
  end

  defp word_list do
    "../../assets/words.txt"
    |> Path.expand(__DIR__)
    |> File.read!()
    |> String.split(~r/\r\n/, trim: true)
  end

end
