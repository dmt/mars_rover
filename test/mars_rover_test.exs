defmodule MarsRoverTest do
  use ExUnit.Case

  test "init rover" do
    rover = MarsRover.new(10, 12, :east)
    assert MarsRover.position(rover) == {10, 12, :east}
  end

  defp assert_forward({x, y, direction}, expected) do
    rover =
      MarsRover.new(x, y, direction)
      |> MarsRover.forward()

    assert MarsRover.position(rover) == expected
  end

  test "move rover forward" do
    assert_forward({10, 12, :north}, {10, 13, :north})
    assert_forward({10, 12, :east}, {11, 12, :east})
    assert_forward({10, 12, :west}, {9, 12, :west})
    assert_forward({10, 12, :south}, {10, 11, :south})
  end

  defp assert_backward({x, y, direction}, expected) do
    rover =
      MarsRover.new(x, y, direction)
      |> MarsRover.backward()

    assert MarsRover.position(rover) == expected
  end

  test "move rover backward" do
    assert_backward({10, 12, :north}, {10, 11, :north})
    assert_backward({10, 12, :east}, {9, 12, :east})
    assert_backward({10, 12, :west}, {11, 12, :west})
    assert_backward({10, 12, :south}, {10, 13, :south})
  end
end
