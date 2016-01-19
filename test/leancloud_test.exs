defmodule LeanCloudTest do
  use ExUnit.Case
  require Logger

  test "the truth" do
    rep = LeanCloud.post!(
      "/classes/Post",
      "{\"content\": \"Elixir\",\"pubUser\": \"Lot\",\"pubTimestamp\": 1435541999}"
    )
    Logger.debug inspect(rep.body)
  end
end
