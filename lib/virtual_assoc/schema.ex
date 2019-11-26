defmodule VirtualAssoc.Schema do
  defmacro __using__(_opts) do
    quote do
      require VirtualAssoc.Schema
      import VirtualAssoc.Schema
    end
  end

  defmacro virtual_one(field, _schema) do
    quote do
      field(unquote(field), :map,
        virtual: true,
        default: %VirtualAssoc.NotLoaded{__field__: unquote(field)}
      )
    end
  end
end
