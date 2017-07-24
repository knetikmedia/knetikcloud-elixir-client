defmodule KnetikPlatformAPIDocumentationLatest.Api.Search do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Search.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Add a new object to an index

  Mainly intended for internal use.
  """
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

  @doc """
  Register reference mappings

  Add a new type mapping to connect data from one index to another, or discover an exsting one. Mainly intended for internal use.
  """
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

  @doc """
  Delete an object

  Mainly intended for internal use. Requires SEARCH_ADMIN.
  """
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

  @doc """
  Delete all objects in an index

  Mainly intended for internal use
  """
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

  @doc """
  Search an index

  The body is an ElasticSearch query in JSON format. Please see their &lt;a href&#x3D;&#39;https://www.elastic.co/guide/en/elasticsearch/reference/current/query-dsl.html&#39;&gt;documentation&lt;/a&gt; for details on the format and search options. The searchable object&#39;s format depends on on the type. See individual search endpoints on other resources for details on their format.
  """
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
