defmodule KnetikPlatformAPIDocumentationLatest.Api.PaymentsOptimal do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.PaymentsOptimal.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Initiate silent post with Optimal

  Will return the url for a hosted payment endpoint to post to. See Optimal documentation for details.
  """
  def silent_post_optimal(request) do
    method = [method: :post]
    url = [url: "/payment/provider/optimal/silent"]
    query_params = []
    header_params = []
    body_params = [body: request]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
