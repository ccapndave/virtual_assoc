defmodule VirtualAssoc.Repo do
  def preload(struct, fields_to_preloaders) do
    fields_to_preloaders
    |> Enum.reduce(struct, fn {field, preloader}, acc ->
      Map.put(acc, field, preloader.(struct))
    end)
  end
end
