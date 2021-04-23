defmodule Inmana.Supplies.Create do
  alias Inmana.{Repo, Supply}

  def call(params) do
    params
    |> Supply.changeset()
    |> Repo.insert()
    |> handle_insert()
  end

  defp handle_insert({:ok, %Supply{} = result}), do: {:ok, result}
  defp handle_insert({:error, reason}), do: {:error, %{result: reason, status: :bad_request}}
end
