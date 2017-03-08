defmodule KnetikPlatformAPIDocumentationLatest.Api.PaymentsPayPalClassic do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.PaymentsPayPalClassic.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

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
