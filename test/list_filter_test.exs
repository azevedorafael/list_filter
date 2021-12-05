defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "returns the total of odd elements from a given list" do
      list = [1, 2, 3, "test", 4, 5, "0", 9]

      response = ListFilter.call(list)

      expected_response = 4

      assert response == expected_response
    end
  end
end
