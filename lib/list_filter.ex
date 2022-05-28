defmodule ListFilter do
  require Integer

  def call(list) do
    list
    |> only_numbers()
    |> only_odds()
    |> length()
  end

  defp only_numbers(list) do
    list
    |> Enum.map(fn e ->
      if is_integer(e) do
        { e, "" }
      else
        Integer.parse(e)
      end
    end)
    |> Enum.filter(fn e -> convert_succes(e) end)
    |> Enum.map(fn { n, _ } -> n end)
  end

  defp only_odds(list) do
    list
    |> Enum.filter(&(Integer.is_odd(&1)))
  end

  defp convert_succes(:error) do
    false
  end

  defp convert_succes({ _number, _ }) do
    true
  end
end
