defmodule LoggerTest do
  use ExUnit.Case
  require Logger

  test "the truth" do
    Logger.debug "hello?"
  end
end
