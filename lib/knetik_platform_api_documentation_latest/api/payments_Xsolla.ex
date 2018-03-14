defmodule KnetikPlatformAPIDocumentationLatest.Api.Payments_Xsolla do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Payments_Xsolla.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://jsapi-integration.us-east-1.elasticbeanstalk.com"
  plug Tesla.Middleware.JSON

  @doc """
  Create a payment token that should be used to forward the user to Xsolla so they can complete payment

  &lt;b&gt;Permissions Needed:&lt;/b&gt; XSOLLA_ADMIN or owner
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
