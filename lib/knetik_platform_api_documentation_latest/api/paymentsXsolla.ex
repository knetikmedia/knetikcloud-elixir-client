defmodule KnetikPlatformAPIDocumentationLatest.Api.PaymentsXsolla do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.PaymentsXsolla.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://devsandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Create a payment token that should be used to forward the user to Xsolla so they can complete payment

  
  """
  def create_xsolla_token_url(request) do
    method = [method: :post]
    url = [url: "/payment/provider/xsolla/payment"]
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
