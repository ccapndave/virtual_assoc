defmodule VirtualAssoc.NotLoaded do
  @enforce_keys [:__field__]
  defstruct [:__field__]

  @type t :: %__MODULE__{
          __field__: atom()
        }

  defimpl Inspect do
    def inspect(not_loaded, _opts) do
      msg = "virtual association #{inspect(not_loaded.__field__)} is not loaded"
      ~s(#VirtualAssoc.NotLoaded<#{msg}>)
    end
  end
end
