defmodule KnetikPlatformAPIDocumentationLatest.Api.PaymentsStripe do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.PaymentsStripe.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Create a Stripe payment method for a user

  Stores customer information and creates a payment method that can be used to pay invoices through the payments endpoints.
  """
  def create_stripe_payment_method(request) do
    method = [method: :post]
    url = [url: "/payment/provider/stripe/payment-methods"]
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
  Pay with a single use token

  
  """
  def pay_stripe_invoice(request) do
    method = [method: :post]
    url = [url: "/payment/provider/stripe/payments"]
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
