defmodule KnetikPlatformAPIDocumentationLatest.Api.StoreShipping do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.StoreShipping.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  def create_shipping_item(cascade, shipping_item) do
    method = [method: :post]
    url = [url: "/store/shipping"]
    query_params = [query: [{:"cascade", cascade}]]
    header_params = []
    body_params = [body: shipping_item]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def create_shipping_template(shipping_template_resource) do
    method = [method: :post]
    url = [url: "/store/shipping/templates"]
    query_params = []
    header_params = []
    body_params = [body: shipping_template_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def delete_shipping_item(id) do
    method = [method: :delete]
    url = [url: "/store/shipping/#{id}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def delete_shipping_template(id, cascade) do
    method = [method: :delete]
    url = [url: "/store/shipping/templates/#{id}"]
    query_params = [query: [{:"cascade", cascade}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_shipping_item(id) do
    method = [method: :get]
    url = [url: "/store/shipping/#{id}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_shipping_template(id) do
    method = [method: :get]
    url = [url: "/store/shipping/templates/#{id}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_shipping_templates(size, page, order) do
    method = [method: :get]
    url = [url: "/store/shipping/templates"]
    query_params = [query: [{:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def update_shipping_item(id, cascade, shipping_item) do
    method = [method: :put]
    url = [url: "/store/shipping/#{id}"]
    query_params = [query: [{:"cascade", cascade}]]
    header_params = []
    body_params = [body: shipping_item]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def update_shipping_template(id, shipping_template_resource) do
    method = [method: :put]
    url = [url: "/store/shipping/templates/#{id}"]
    query_params = []
    header_params = []
    body_params = [body: shipping_template_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
