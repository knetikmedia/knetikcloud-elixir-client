defmodule KnetikPlatformAPIDocumentationLatest.Api.PaymentsPayPalClassic do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.PaymentsPayPalClassic.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://devsandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Create a PayPal Classic billing agreement for the user

  Returns the token that should be used to forward the user to PayPal so they can accept the agreement.
  """
  def create_pay_pal_billing_agreement_url(request) do
    method = [method: :post]
    url = [url: "/payment/provider/paypal/classic/agreements/start"]
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
  Create a payment token for PayPal express checkout

  Returns the token that should be used to forward the user to PayPal so they can complete the checkout.
  """
  def create_pay_pal_express_checkout(request) do
    method = [method: :post]
    url = [url: "/payment/provider/paypal/classic/checkout/start"]
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
  Finalizes a billing agreement after the user has accepted through PayPal

  Returns the ID of the new payment method created for the user for the billing agreement.
  """
  def finalize_pay_pal_billing_agreement(request) do
    method = [method: :post]
    url = [url: "/payment/provider/paypal/classic/agreements/finish"]
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
  Finalizes a payment after the user has completed checkout with PayPal

  The invoice will be marked paid/failed by asynchronous IPN callback.
  """
  def finalize_pay_pal_checkout(request) do
    method = [method: :post]
    url = [url: "/payment/provider/paypal/classic/checkout/finish"]
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
