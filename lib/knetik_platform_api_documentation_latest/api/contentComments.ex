defmodule KnetikPlatformAPIDocumentationLatest.Api.ContentComments do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.ContentComments.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  def add_comment(comment_resource) do
    method = [method: :post]
    url = [url: "/comments"]
    query_params = []
    header_params = []
    body_params = [body: comment_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def delete_comment(id) do
    method = [method: :delete]
    url = [url: "/comments/#{id}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_comment(id) do
    method = [method: :get]
    url = [url: "/comments/#{id}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_comments(context, context_id, size, page) do
    method = [method: :get]
    url = [url: "/comments"]
    query_params = [query: [{:"context", context}, {:"contextId", context_id}, {:"size", size}, {:"page", page}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def search_comments(query, size, page) do
    method = [method: :post]
    url = [url: "/comments/search"]
    query_params = [query: [{:"size", size}, {:"page", page}]]
    header_params = []
    body_params = [body: query]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def update_comment(id, content) do
    method = [method: :put]
    url = [url: "/comments/#{id}/content"]
    query_params = []
    header_params = []
    body_params = [body: content]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
