defmodule MarsRoverTest do
  use ExUnit.Case
  doctest MarsRover

  test "greets the world" do
    assert MarsRover.hello() == :world
  end

  test "init rover" do
    rover = MarsRover.new(10, 12, :east)
    assert MarsRover.position(rover) == {10, 12, :east}
  end

  defp assert_forward(start, expected) do
    rover =
      start |> MarsRover.forward()

    assert MarsRover.position(rover) == expected
  end

  test "move rover forward" do
    assert_forward(MarsRover.new(10, 12, :north), {10, 13, :north})
    assert_forward(MarsRover.new(10, 12, :east), {11, 12, :east})
    assert_forward(MarsRover.new(10, 12, :west), {9, 12, :west})
    assert_forward(MarsRover.new(10, 12, :south), {10, 11, :south})
  end

end
