defmodule MarsRover do
  @moduledoc """
  Documentation for MarsRover.
  """

  @doc """
  Hello world.

  ## Examples

      iex> MarsRover.hello
      :world

  """
  def hello do
    :world
  end

  def new(x, y, direction) do
    {x, y, direction}
  end

  def position(rover) do
    rover
  end

  def forward({x, y, :east}) do
    {x + 1, y, :east}
  end
  def forward({x, y, :north}) do
    {x, y + 1, :north}
  end
end
