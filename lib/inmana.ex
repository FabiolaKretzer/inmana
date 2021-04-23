defmodule Inmana do
  alias Inmana.Restaurants.Create, as: RestaurantCreate
  alias Inmana.Supplies.Create, as: SupplyCreate
  alias Inmana.Supplies.Get, as: SupplyGet

  defdelegate create_restaurant(restaurant), to: RestaurantCreate, as: :call

  defdelegate create_supply(supply), to: SupplyCreate, as: :call
  defdelegate get_supply(id), to: SupplyGet, as: :call
end
