defmodule KnetikPlatformAPIDocumentationLatest.Api.Search do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Search.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  def add_search_index(type, id, object) do
    method = [method: :post]
    url = [url: "/search/index/{type}/#{id}"]
    query_params = []
    header_params = []
    body_params = [body: object]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def add_search_mappings(mappings) do
    method = [method: :post]
    url = [url: "/search/mappings"]
    query_params = []
    header_params = []
    body_params = [body: mappings]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def delete_search_index(type, id) do
    method = [method: :delete]
    url = [url: "/search/index/{type}/#{id}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def delete_search_indexes(type) do
    method = [method: :delete]
    url = [url: "/search/index/#{type}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def search_index(type, query, size, page) do
    method = [method: :post]
    url = [url: "/search/index/#{type}"]
    query_params = [query: [{:"size", size}, {:"page", page}]]
    header_params = []
    body_params = [body: query]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
