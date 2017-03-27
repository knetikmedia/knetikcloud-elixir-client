defmodule KnetikPlatformAPIDocumentationLatest.Api.StoreShoppingCarts do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.StoreShoppingCarts.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  def add_custom_discount(id, custom_discount) do
    method = [method: :post]
    url = [url: "/carts/#{id}/custom-discounts"]
    query_params = []
    header_params = []
    body_params = [body: custom_discount]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def add_discount_to_cart(id, sku_request) do
    method = [method: :post]
    url = [url: "/carts/#{id}/discounts"]
    query_params = []
    header_params = []
    body_params = [body: sku_request]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def add_item_to_cart(id, cart_item_request) do
    method = [method: :post]
    url = [url: "/carts/#{id}/items"]
    query_params = []
    header_params = []
    body_params = [body: cart_item_request]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def create_cart(owner, currency_code) do
    method = [method: :post]
    url = [url: "/carts"]
    query_params = [query: [{:"owner", owner}, {:"currencyCode", currency_code}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_cart(id) do
    method = [method: :get]
    url = [url: "/carts/#{id}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_carts(filter_owner_id, size, page, order) do
    method = [method: :get]
    url = [url: "/carts"]
    query_params = [query: [{:"filterOwnerId", filter_owner_id}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_shippable(id) do
    method = [method: :get]
    url = [url: "/carts/#{id}/shippable"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_shipping_countries(id) do
    method = [method: :get]
    url = [url: "/carts/#{id}/countries"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def remove_discount_from_cart(id, code) do
    method = [method: :delete]
    url = [url: "/carts/{id}/discounts/#{code}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def set_cart_currency(id, currency_code) do
    method = [method: :put]
    url = [url: "/carts/#{id}/currency"]
    query_params = []
    header_params = []
    body_params = [body: currency_code]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def set_cart_owner(id, user_id) do
    method = [method: :put]
    url = [url: "/carts/#{id}/owner"]
    query_params = []
    header_params = []
    body_params = [body: user_id]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def update_item_in_cart(id, cart_item_request) do
    method = [method: :put]
    url = [url: "/carts/#{id}/items"]
    query_params = []
    header_params = []
    body_params = [body: cart_item_request]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def update_shipping_address(id, cart_shipping_address_request) do
    method = [method: :put]
    url = [url: "/carts/#{id}/shipping-address"]
    query_params = []
    header_params = []
    body_params = [body: cart_shipping_address_request]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
