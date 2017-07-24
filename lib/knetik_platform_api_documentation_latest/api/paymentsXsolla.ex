defmodule KnetikPlatformAPIDocumentationLatest.Api.PaymentsXsolla do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.PaymentsXsolla.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
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

  @doc """
  Receives payment response from Xsolla

  Only used by Xsolla to call back to JSAPI after processing user payment action
  """
  def receive_xsolla_notification() do
    method = [method: :post]
    url = [url: "/payment/provider/xsolla/notifications"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
