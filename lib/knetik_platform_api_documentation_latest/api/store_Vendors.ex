defmodule KnetikPlatformAPIDocumentationLatest.Api.Store_Vendors do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Store_Vendors.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://jsapi-integration.us-east-1.elasticbeanstalk.com"
  plug Tesla.Middleware.JSON

  @doc """
  Create a vendor

  &lt;b&gt;Permissions Needed:&lt;/b&gt; VENDORS_ADMIN
  """
  def create_vendor(vendor) do
    method = [method: :post]
    url = [url: "/vendors"]
    query_params = []
    header_params = []
    body_params = [body: vendor]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Create a vendor template

  Vendor Templates define a type of vendor and the properties they have. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  """
  def create_vendor_template(vendor_template_resource) do
    method = [method: :post]
    url = [url: "/vendors/templates"]
    query_params = []
    header_params = []
    body_params = [body: vendor_template_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Delete a vendor

  &lt;b&gt;Permissions Needed:&lt;/b&gt; VENDORS_ADMIN
  """
  def delete_vendor(id) do
    method = [method: :delete]
    url = [url: "/vendors/#{id}"]
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
  Delete a vendor template

  &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  """
  def delete_vendor_template(id, cascade) do
    method = [method: :delete]
    url = [url: "/vendors/templates/#{id}"]
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
  Get a single vendor

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
  def get_vendor(id) do
    method = [method: :get]
    url = [url: "/vendors/#{id}"]
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
  Get a single vendor template

  Vendor Templates define a type of vendor and the properties they have. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  """
  def get_vendor_template(id) do
    method = [method: :get]
    url = [url: "/vendors/templates/#{id}"]
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
  List and search vendor templates

  &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  """
  def get_vendor_templates(size, page, order) do
    method = [method: :get]
    url = [url: "/vendors/templates"]
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
  List and search vendors

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
  def get_vendors(filter_name, size, page, order) do
    method = [method: :get]
    url = [url: "/vendors"]
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
  Update a vendor

  &lt;b&gt;Permissions Needed:&lt;/b&gt; VENDORS_ADMIN
  """
  def update_vendor(id, vendor) do
    method = [method: :put]
    url = [url: "/vendors/#{id}"]
    query_params = []
    header_params = []
    body_params = [body: vendor]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Update a vendor template

  &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  """
  def update_vendor_template(id, vendor_template_resource) do
    method = [method: :put]
    url = [url: "/vendors/templates/#{id}"]
    query_params = []
    header_params = []
    body_params = [body: vendor_template_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
