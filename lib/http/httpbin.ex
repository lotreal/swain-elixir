defmodule Httpbin do
  use HTTPoison.Base
  require Logger

  @endpoint "https://httpbin.org"

  def process_url(url) do
    @endpoint <> url
  end

  def process_request_headers(headers) do
    Logger.debug inspect(headers)
    headers ++ [
      {"User-Agent", "swain"},
      {"Content-Type", "application/json"}
    ]
  end

  def process_response_body(body) do
    body
    |> Poison.decode!
    |> Enum.map(fn({k, v}) -> {String.to_atom(k), v} end)
  end

end
