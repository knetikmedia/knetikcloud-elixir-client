defmodule KnetikPlatformAPIDocumentationLatest.Api.Dispositions do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Dispositions.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

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

  def get_disposition_counts(filter_context, filter_owner) do
    method = [method: :get]
    url = [url: "/dispositions/count"]
    query_params = [query: [{:"filterContext", filter_context}, {:"filterOwner", filter_owner}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_dispositions(filter_context, filter_owner, size, page, order) do
    method = [method: :get]
    url = [url: "/dispositions"]
    query_params = [query: [{:"filterContext", filter_context}, {:"filterOwner", filter_owner}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
