defmodule KnetikPlatformAPIDocumentationLatest.Api.PaymentsApple do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.PaymentsApple.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  def verify_apple_receipt(request) do
    method = [method: :post]
    url = [url: "/payment/provider/apple/receipt"]
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
