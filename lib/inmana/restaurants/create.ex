defmodule Inmana.Restaurants.Create do
  alias Inmana.{Repo, Restaurant}

  def call(params) do
    params
    |> Restaurant.changeset()
    |> Repo.insert()
    |> handle_insert()
  end

  defp handle_insert({:ok, %Restaurant{} = result}), do: {:ok, result}
  defp handle_insert({:error, reason}), do: {:error, %{result: reason, status: :bad_request}}
end
