# mix test --exclude external
defmodule HttpbinTest do
  use ExUnit.Case
  require Logger

  @tag external: true
  test "the truth" do
    rep = Httpbin.post!(
      "/post",
      "{\"content\": \"Elixir\",\"pubUser\": \"Lot\",\"pubTimestamp\": 1435541999}"
    )
    Logger.debug inspect(rep.body)
  end
end
