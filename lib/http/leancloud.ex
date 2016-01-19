defmodule LeanCloud do
  use HTTPoison.Base
  require Logger

  @endpoint "https://api.leancloud.cn/1.1"

  def process_url(url) do
    @endpoint <> url
  end

  def process_request_headers(headers) do
    Logger.debug inspect(headers)
    headers ++ [
      {"X-LC-Id", "sjYg3t1cVQryUzBbEFsMFgYt-gzGzoHsz"},
      {"X-LC-Key", "eWBJd5gFmu2SIC6MIA2ADqtp"},
      {"Content-Type", "application/json"}
    ]
  end

  def process_response_body(body) do
    body
    |> Poison.decode!
    |> Enum.map(fn({k, v}) -> {String.to_atom(k), v} end)
  end
end
