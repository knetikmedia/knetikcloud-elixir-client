defmodule KnetikPlatformAPIDocumentationLatest.Api.Store_Sales do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Store_Sales.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://jsapi-integration.us-east-1.elasticbeanstalk.com"
  plug Tesla.Middleware.JSON

  @doc """
  Create a sale

  &lt;b&gt;Permissions Needed:&lt;/b&gt; SALES_ADMIN
  """
  def create_catalog_sale(catalog_sale) do
    method = [method: :post]
    url = [url: "/store/sales"]
    query_params = []
    header_params = []
    body_params = [body: catalog_sale]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Delete a sale

  &lt;b&gt;Permissions Needed:&lt;/b&gt; SALES_ADMIN
  """
  def delete_catalog_sale(id) do
    method = [method: :delete]
    url = [url: "/store/sales/#{id}"]
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
  Get a single sale

  &lt;b&gt;Permissions Needed:&lt;/b&gt; SALES_USER or SALES_ADMIN
  """
  def get_catalog_sale(id) do
    method = [method: :get]
    url = [url: "/store/sales/#{id}"]
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
  List and search sales

  &lt;b&gt;Permissions Needed:&lt;/b&gt; SALES_USER or SALES_ADMIN
  """
  def get_catalog_sales(size, page, order) do
    method = [method: :get]
    url = [url: "/store/sales"]
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
  Update a sale

  &lt;b&gt;Permissions Needed:&lt;/b&gt; SALES_ADMIN
  """
  def update_catalog_sale(id, catalog_sale) do
    method = [method: :put]
    url = [url: "/store/sales/#{id}"]
    query_params = []
    header_params = []
    body_params = [body: catalog_sale]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
