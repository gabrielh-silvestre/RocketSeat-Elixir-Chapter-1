defmodule ListLength do
  def call(list), do: my_length(list, 0)

  defp my_length([], acc), do: acc

  defp my_length([_head | tail], acc) do
    acc = acc + 1
    my_length(tail, acc)
  end

  # def call(list), do: length(list)
end
