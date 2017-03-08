defmodule KnetikPlatformAPIDocumentationLatest.Api.StoreSales do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.StoreSales.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

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
