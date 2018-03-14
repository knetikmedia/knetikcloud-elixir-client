defmodule KnetikPlatformAPIDocumentationLatest.Api.Store_Shipping do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Store_Shipping.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://jsapi-integration.us-east-1.elasticbeanstalk.com"
  plug Tesla.Middleware.JSON

  @doc """
  Create a shipping item

  A shipping item represents a shipping option and cost. SKUs have to be unique in the entire store. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; SHIPPING_ADMIN
  """
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

  @doc """
  Create a shipping template

  Shipping Templates define a type of shipping and the properties they have.
  """
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

  @doc """
  Delete a shipping item

  &lt;b&gt;Permissions Needed:&lt;/b&gt; SHIPPING_ADMIN
  """
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

  @doc """
  Delete a shipping template

  &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  """
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

  @doc """
  Get a single shipping item

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
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

  @doc """
  Get a single shipping template

  Shipping Templates define a type of shipping and the properties they have. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN or SHIPPING_ADMIN
  """
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

  @doc """
  List and search shipping templates

  &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN or SHIPPING_ADMIN
  """
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

  @doc """
  Update a shipping item

  &lt;b&gt;Permissions Needed:&lt;/b&gt; SHIPPING_ADMIN
  """
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

  @doc """
  Update a shipping template

  &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  """
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
