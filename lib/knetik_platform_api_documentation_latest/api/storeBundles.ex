defmodule KnetikPlatformAPIDocumentationLatest.Api.StoreBundles do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.StoreBundles.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Create a bundle item

  The SKU for the bundle itself must be unique and there can only be one SKU.  Extra notes for price_override:  The price of all the items (multiplied by the quantity) must equal the price of the bundle.  With individual prices set, items will be processed individually and can be refunded as such.  However, if all prices are set to null, the price of the bundle will be used and will be treated as one item. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; BUNDLES_ADMIN
  """
  def create_bundle_item(cascade, bundle_item) do
    method = [method: :post]
    url = [url: "/store/bundles"]
    query_params = [query: [{:"cascade", cascade}]]
    header_params = []
    body_params = [body: bundle_item]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Create a bundle template

  Bundle Templates define a type of bundle and the properties they have. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; BUNDLES_ADMIN
  """
  def create_bundle_template(bundle_template_resource) do
    method = [method: :post]
    url = [url: "/store/bundles/templates"]
    query_params = []
    header_params = []
    body_params = [body: bundle_template_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Delete a bundle item

  &lt;b&gt;Permissions Needed:&lt;/b&gt; BUNDLES_ADMIN
  """
  def delete_bundle_item(id) do
    method = [method: :delete]
    url = [url: "/store/bundles/#{id}"]
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
  Delete a bundle template

  &lt;b&gt;Permissions Needed:&lt;/b&gt; BUNDLES_ADMIN
  """
  def delete_bundle_template(id, cascade) do
    method = [method: :delete]
    url = [url: "/store/bundles/templates/#{id}"]
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
  Get a single bundle item

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
  def get_bundle_item(id) do
    method = [method: :get]
    url = [url: "/store/bundles/#{id}"]
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
  Get a single bundle template

  Bundle Templates define a type of bundle and the properties they have. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
  def get_bundle_template(id) do
    method = [method: :get]
    url = [url: "/store/bundles/templates/#{id}"]
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
  List and search bundle templates

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
  def get_bundle_templates(size, page, order) do
    method = [method: :get]
    url = [url: "/store/bundles/templates"]
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
  Update a bundle item

  &lt;b&gt;Permissions Needed:&lt;/b&gt; BUNDLES_ADMIN
  """
  def update_bundle_item(id, cascade, bundle_item) do
    method = [method: :put]
    url = [url: "/store/bundles/#{id}"]
    query_params = [query: [{:"cascade", cascade}]]
    header_params = []
    body_params = [body: bundle_item]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Update a bundle template

  &lt;b&gt;Permissions Needed:&lt;/b&gt; BUNDLES_ADMIN
  """
  def update_bundle_template(id, bundle_template_resource) do
    method = [method: :put]
    url = [url: "/store/bundles/templates/#{id}"]
    query_params = []
    header_params = []
    body_params = [body: bundle_template_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
