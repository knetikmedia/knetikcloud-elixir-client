defmodule KnetikPlatformAPIDocumentationLatest.Api.Payments do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Payments.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  def create_payment_method(user_id, payment_method) do
    method = [method: :post]
    url = [url: "/users/#{user_id}/payment-methods"]
    query_params = []
    header_params = []
    body_params = [body: payment_method]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def delete_payment_method(user_id, id) do
    method = [method: :delete]
    url = [url: "/users/{user_id}/payment-methods/#{id}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_payment_method(user_id, id) do
    method = [method: :get]
    url = [url: "/users/{user_id}/payment-methods/#{id}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_payment_methods(user_id, size, page, order) do
    method = [method: :get]
    url = [url: "/users/#{user_id}/payment-methods"]
    query_params = [query: [{:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def payment_authorization(request) do
    method = [method: :post]
    url = [url: "/payment/authorizations"]
    query_params = []
    header_params = []
    body_params = [body: request]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def payment_capture(id) do
    method = [method: :post]
    url = [url: "/payment/authorizations/#{id}/capture"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def update_payment_method(user_id, id, payment_method) do
    method = [method: :put]
    url = [url: "/users/{user_id}/payment-methods/#{id}"]
    query_params = []
    header_params = []
    body_params = [body: payment_method]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
