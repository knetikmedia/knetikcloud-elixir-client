defmodule KnetikPlatformAPIDocumentationLatest.Api.Payments_FattMerchant do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Payments_FattMerchant.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://jsapi-integration.us-east-1.elasticbeanstalk.com"
  plug Tesla.Middleware.JSON

  @doc """
  Create or update a FattMerchant payment method for a user

  Stores customer information and creates a payment method that can be used to pay invoices through the payments endpoints. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; FATTMERCHANT_ADMIN or owner
  """
  def create_or_update_fatt_merchant_payment_method(request) do
    method = [method: :put]
    url = [url: "/payment/provider/fattmerchant/payment-methods"]
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
