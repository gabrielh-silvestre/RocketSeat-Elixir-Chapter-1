defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "return odd numbers quantity" do
      only_numbers_list = [1, 2, 3, 4, 5, 6]
      only_stringfy_numbers_list = ["1", "2", "3", "4", "5", "6"]
      letters_numbers_list = ["1", "d", "3", "4", "c", "a"]

      assert ListFilter.call(only_numbers_list) == 3
      assert ListFilter.call(only_stringfy_numbers_list) == 3
      assert ListFilter.call(letters_numbers_list) == 2
    end
  end
end
