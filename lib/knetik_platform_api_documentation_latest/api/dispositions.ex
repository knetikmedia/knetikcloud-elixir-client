defmodule KnetikPlatformAPIDocumentationLatest.Api.Dispositions do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Dispositions.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://devsandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Add a new disposition

  
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
