defmodule SimpleExDocs.Caller do
  alias SimpleExDocs.Types

  @spec call(Types.input()) :: Types.output()
  def call(%{} = map), do: map
end
