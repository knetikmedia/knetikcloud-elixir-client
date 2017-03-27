defmodule KnetikPlatformAPIDocumentationLatest.Api.Store do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Store.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

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

  def get_store(limit, page, use_catalog, ignore_location, in_stock_only) do
    method = [method: :get]
    url = [url: "/store"]
    query_params = [query: [{:"limit", limit}, {:"page", page}, {:"useCatalog", use_catalog}, {:"ignoreLocation", ignore_location}, {:"inStockOnly", in_stock_only}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

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

  def get_store_items(filter_name_search, filter_unique_key, filter_published, filter_displayable, filter_start, filter_end, filter_start_date, filter_stop_date, filter_sku, filter_price, filter_tag, filter_items_by_type, filter_bundled_skus, size, page, order) do
    method = [method: :get]
    url = [url: "/store/items"]
    query_params = [query: [{:"filterNameSearch", filter_name_search}, {:"filterUniqueKey", filter_unique_key}, {:"filterPublished", filter_published}, {:"filterDisplayable", filter_displayable}, {:"filterStart", filter_start}, {:"filterEnd", filter_end}, {:"filterStartDate", filter_start_date}, {:"filterStopDate", filter_stop_date}, {:"filterSku", filter_sku}, {:"filterPrice", filter_price}, {:"filterTag", filter_tag}, {:"filterItemsByType", filter_items_by_type}, {:"filterBundledSkus", filter_bundled_skus}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

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
