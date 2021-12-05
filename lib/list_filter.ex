require Integer

defmodule ListFilter do
  def call(list), do: filter(list)

  defp filter([]), do: []

  defp filter(list) do
    Enum.filter(list, fn element -> is_number(element) end)
    |> count_odd
  end

  defp count_odd(list) do
    Enum.filter(list, fn x -> rem(x, 2) == 1 end)
    |> Enum.count()
  end
end
