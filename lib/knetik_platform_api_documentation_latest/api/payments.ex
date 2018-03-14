defmodule KnetikPlatformAPIDocumentationLatest.Api.Payments do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Payments.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://jsapi-integration.us-east-1.elasticbeanstalk.com"
  plug Tesla.Middleware.JSON

  @doc """
  Create a new payment method for a user

  &lt;b&gt;Permissions Needed:&lt;/b&gt; PAYMENTS_ADMIN or owner
  """
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

  @doc """
  Delete an existing payment method for a user

  &lt;b&gt;Permissions Needed:&lt;/b&gt; PAYMENTS_ADMIN or owner
  """
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

  @doc """
  Get a single payment method for a user

  &lt;b&gt;Permissions Needed:&lt;/b&gt; PAYMENTS_ADMIN or owner
  """
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

  @doc """
  Get a single payment method type

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
  def get_payment_method_type(id) do
    method = [method: :get]
    url = [url: "/payment/types/#{id}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Get all payment method types

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
  def get_payment_method_types(filter_name, size, page, order) do
    method = [method: :get]
    url = [url: "/payment/types"]
    query_params = [query: [{:"filter_name", filter_name}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Get all payment methods for a user

  &lt;b&gt;Permissions Needed:&lt;/b&gt; PAYMENTS_ADMIN or owner
  """
  def get_payment_methods(user_id, filter_name, filter_payment_type, filter_payment_method_type_id, filter_payment_method_type_name, size, page, order) do
    method = [method: :get]
    url = [url: "/users/#{user_id}/payment-methods"]
    query_params = [query: [{:"filter_name", filter_name}, {:"filter_payment_type", filter_payment_type}, {:"filter_payment_method_type_id", filter_payment_method_type_id}, {:"filter_payment_method_type_name", filter_payment_method_type_name}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Authorize payment of an invoice for later capture

  &lt;b&gt;Permissions Needed:&lt;/b&gt; PAYMENTS_ADMIN or PAYMENTS_USER
  """
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

  @doc """
  Capture an existing invoice payment authorization

  &lt;b&gt;Permissions Needed:&lt;/b&gt; PAYMENTS_ADMIN
  """
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

  @doc """
  Update an existing payment method for a user

  &lt;b&gt;Permissions Needed:&lt;/b&gt; PAYMENTS_ADMIN or owner
  """
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
