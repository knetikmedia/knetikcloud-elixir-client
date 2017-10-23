defmodule KnetikPlatformAPIDocumentationLatest.Api.StoreVendors do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.StoreVendors.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Create a vendor

  
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

  Vendor Templates define a type of vendor and the properties they have.
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

  Vendor Templates define a type of vendor and the properties they have.
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
