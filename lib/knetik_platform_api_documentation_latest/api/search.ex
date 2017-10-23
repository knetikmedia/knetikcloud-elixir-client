defmodule KnetikPlatformAPIDocumentationLatest.Api.Search do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Search.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Search an index

  The body is an ElasticSearch query in JSON format. Please see their &lt;a href&#x3D;&#39;https://www.elastic.co/guide/en/elasticsearch/reference/current/query-dsl.html&#39;&gt;documentation&lt;/a&gt; for details on the format and search options. The searchable object&#39;s format depends on on the type but mostly matches the resource from it&#39;s main endpoint. Exceptions include referenced objects (like user) being replaced with the full user resource to allow deeper searching.
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
