defmodule KnetikPlatformAPIDocumentationLatest.Api.PaymentsFattMerchant do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.PaymentsFattMerchant.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Create or update a FattMerchant payment method for a user

  Stores customer information and creates a payment method that can be used to pay invoices through the payments endpoints.
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
