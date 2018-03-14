defmodule KnetikPlatformAPIDocumentationLatest.Api.Dispositions do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Dispositions.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://jsapi-integration.us-east-1.elasticbeanstalk.com"
  plug Tesla.Middleware.JSON

  @doc """
  Add a new disposition

  &lt;b&gt;Permissions Needed:&lt;/b&gt; DISPOSITIONS_USER and user, or DISPOSITIONS_ADMIN
  """
  def add_disposition(disposition) do
    method = [method: :post]
    url = [url: "/dispositions"]
    query_params = []
    header_params = []
    body_params = [body: disposition]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Delete a disposition

  &lt;b&gt;Permissions Needed:&lt;/b&gt; DISPOSITIONS_USER and owner, or DISPOSITIONS_ADMIN
  """
  def delete_disposition(id) do
    method = [method: :delete]
    url = [url: "/dispositions/#{id}"]
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
  Returns a disposition

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
  def get_disposition(id) do
    method = [method: :get]
    url = [url: "/dispositions/#{id}"]
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
  Returns a list of disposition counts

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
  def get_disposition_counts(filter_context, filter_owner) do
    method = [method: :get]
    url = [url: "/dispositions/count"]
    query_params = [query: [{:"filter_context", filter_context}, {:"filter_owner", filter_owner}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Returns a page of dispositions

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
  def get_dispositions(filter_context, filter_owner, size, page, order) do
    method = [method: :get]
    url = [url: "/dispositions"]
    query_params = [query: [{:"filter_context", filter_context}, {:"filter_owner", filter_owner}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
