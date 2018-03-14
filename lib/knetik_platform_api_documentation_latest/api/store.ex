defmodule KnetikPlatformAPIDocumentationLatest.Api.Store do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Store.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://jsapi-integration.us-east-1.elasticbeanstalk.com"
  plug Tesla.Middleware.JSON

  @doc """
  Create an item template

  Item Templates define a type of item and the properties they have. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  """
  def create_item_template(item_template_resource) do
    method = [method: :post]
    url = [url: "/store/items/templates"]
    query_params = []
    header_params = []
    body_params = [body: item_template_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Create a store item

  SKUs have to be unique in the entire store. If a duplicate SKU is found, a 400 error is generated and the response will have a \&quot;parameters\&quot; field that is a list of duplicates. A duplicate is an object like {item_id, offending_sku_list}. Ex:&lt;br /&gt; {..., parameters: [[{item: 1, skus: [\&quot;SKU-1\&quot;]}]]}&lt;br /&gt; If an item is brand new and has duplicate SKUs within itself, the item ID will be 0.  Item subclasses are not allowed here, you will have to use their respective endpoints. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; STORE_ADMIN
  """
  def create_store_item(cascade, store_item) do
    method = [method: :post]
    url = [url: "/store/items"]
    query_params = [query: [{:"cascade", cascade}]]
    header_params = []
    body_params = [body: store_item]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Delete an item template

  &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  """
  def delete_item_template(id, cascade) do
    method = [method: :delete]
    url = [url: "/store/items/templates/#{id}"]
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
  Delete a store item

  &lt;b&gt;Permissions Needed:&lt;/b&gt; STORE_ADMIN
  """
  def delete_store_item(id) do
    method = [method: :delete]
    url = [url: "/store/items/#{id}"]
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
  List available item behaviors

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
  def get_behaviors() do
    method = [method: :get]
    url = [url: "/store/items/behaviors"]
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
  Get a single item template

  Item Templates define a type of item and the properties they have. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  """
  def get_item_template(id) do
    method = [method: :get]
    url = [url: "/store/items/templates/#{id}"]
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
  List and search item templates

  &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  """
  def get_item_templates(size, page, order) do
    method = [method: :get]
    url = [url: "/store/items/templates"]
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
  Get a single store item

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
  def get_store_item(id) do
    method = [method: :get]
    url = [url: "/store/items/#{id}"]
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
  List and search store items

  If called without permission STORE_ADMIN the only items marked displayable, whose start and end date are null or appropriate to the current date, and whose geo policy allows the caller&#39;s country will be returned. Similarly skus will be filtered, possibly resulting in an item returned with no skus the user can purchase. br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
  def get_store_items(filter_name_search, filter_unique_key, filter_published, filter_displayable, filter_start, filter_end, filter_start_date, filter_stop_date, filter_sku, filter_price, filter_tag, filter_items_by_type, filter_bundled_skus, filter_vendor, size, page, order) do
    method = [method: :get]
    url = [url: "/store/items"]
    query_params = [query: [{:"filter_name_search", filter_name_search}, {:"filter_unique_key", filter_unique_key}, {:"filter_published", filter_published}, {:"filter_displayable", filter_displayable}, {:"filter_start", filter_start}, {:"filter_end", filter_end}, {:"filter_start_date", filter_start_date}, {:"filter_stop_date", filter_stop_date}, {:"filter_sku", filter_sku}, {:"filter_price", filter_price}, {:"filter_tag", filter_tag}, {:"filter_items_by_type", filter_items_by_type}, {:"filter_bundled_skus", filter_bundled_skus}, {:"filter_vendor", filter_vendor}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  One-step purchase and pay for a single SKU item from a user&#39;s wallet

  Used to create and automatically pay an invoice for a single unit of a single SKU from a user&#39;s wallet. SKU must be priced in virtual currency and must not be an item that requires shipping. PAYMENTS_ADMIN permission is required if user ID is specified and is not the ID of the currently logged in user. If invoice price does not match expected price, purchase is aborted. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; PAYMENTS_USER and owner, or PAYMENTS_ADMIN
  """
  def quick_buy(quick_buy_request) do
    method = [method: :post]
    url = [url: "/store/quick-buy"]
    query_params = []
    header_params = []
    body_params = [body: quick_buy_request]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Update an item template

  &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  """
  def update_item_template(id, item_template_resource) do
    method = [method: :put]
    url = [url: "/store/items/templates/#{id}"]
    query_params = []
    header_params = []
    body_params = [body: item_template_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Update a store item

  &lt;b&gt;Permissions Needed:&lt;/b&gt; STORE_ADMIN
  """
  def update_store_item(id, cascade, store_item) do
    method = [method: :put]
    url = [url: "/store/items/#{id}"]
    query_params = [query: [{:"cascade", cascade}]]
    header_params = []
    body_params = [body: store_item]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
