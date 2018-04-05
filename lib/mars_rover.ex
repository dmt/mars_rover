defmodule MarsRover do
  def new(x, y, direction) do
    {x, y, direction}
  end

  def position(rover) do
    rover
  end

  def forward({x, y, direction}) do
    case direction do
      :east -> {x + 1, y, :east}
      :north -> {x, y + 1, :north}
      :west -> {x - 1, y, :west}
      :south -> {x, y - 1, :south}
    end
  end

  def backward({x, y, direction}) do
    case direction do
      :east -> {x - 1, y, :east}
      :north -> {x, y - 1, :north}
      :west -> {x + 1, y, :west}
      :south -> {x, y + 1, :south}
    end
  end
end
