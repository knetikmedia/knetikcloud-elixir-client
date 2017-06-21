defmodule KnetikPlatformAPIDocumentationLatest.Api.PaymentsXsolla do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.PaymentsXsolla.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

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
