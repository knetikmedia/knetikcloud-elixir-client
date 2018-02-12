defmodule KnetikPlatformAPIDocumentationLatest.Api.StoreShoppingCarts do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.StoreShoppingCarts.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Adds a custom discount to the cart

  &lt;b&gt;Permissions Needed:&lt;/b&gt; SHOPPING_CARTS_ADMIN
  """
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

  @doc """
  Adds a discount coupon to the cart

  &lt;b&gt;Permissions Needed:&lt;/b&gt; SHOPPING_CARTS_ADMIN or owner
  """
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

  @doc """
  Add an item to the cart

  Currently, carts cannot contain virtual and real currency items at the same time. Furthermore, the API only support a single virtual item at the moment. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; SHOPPING_CARTS_ADMIN or owner
  """
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

  @doc """
  Create a cart

  You don&#39;t have to have a user to create a cart but the API requires authentication to checkout. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
  def create_cart(owner, currency_code) do
    method = [method: :post]
    url = [url: "/carts"]
    query_params = [query: [{:"owner", owner}, {:"currency_code", currency_code}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Returns the cart with the given GUID

  &lt;b&gt;Permissions Needed:&lt;/b&gt; SHOPPING_CARTS_ADMIN or owner
  """
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

  @doc """
  Get a list of carts

  &lt;b&gt;Permissions Needed:&lt;/b&gt; SHOPPING_CARTS_ADMIN or owner
  """
  def get_carts(filter_owner_id, size, page, order) do
    method = [method: :get]
    url = [url: "/carts"]
    query_params = [query: [{:"filter_owner_id", filter_owner_id}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Returns whether a cart requires shipping

  &lt;b&gt;Permissions Needed:&lt;/b&gt; SHOPPING_CARTS_ADMIN or owner
  """
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

  @doc """
  Get the list of available shipping countries per vendor

  Since a cart can have multiple vendors with different shipping options, the countries are broken down by vendors. Please see notes about the response object as the fields are variable. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; SHOPPING_CARTS_ADMIN or owner
  """
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

  @doc """
  Removes a discount coupon from the cart

  &lt;b&gt;Permissions Needed:&lt;/b&gt; SHOPPING_CARTS_ADMIN or owner
  """
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

  @doc """
  Sets the currency to use for the cart

  May be disallowed by site settings. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; SHOPPING_CARTS_ADMIN or owner
  """
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

  @doc """
  Sets the owner of a cart if none is set already

  &lt;b&gt;Permissions Needed:&lt;/b&gt; SHOPPING_CARTS_ADMIN or owner
  """
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

  @doc """
  Changes the quantity of an item already in the cart

  A quantity of zero will remove the item from the cart altogether. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; SHOPPING_CARTS_ADMIN or owner
  """
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

  @doc """
  Modifies or sets the order shipping address

  &lt;b&gt;Permissions Needed:&lt;/b&gt; SHOPPING_CARTS_ADMIN or owner
  """
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
