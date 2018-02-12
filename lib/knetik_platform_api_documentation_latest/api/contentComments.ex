defmodule KnetikPlatformAPIDocumentationLatest.Api.ContentComments do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.ContentComments.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Add a new comment

  &lt;b&gt;Permissions Needed:&lt;/b&gt; COMMENTS_USER or COMMENTS_ADMIN
  """
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

  @doc """
  Delete a comment

  &lt;b&gt;Permissions Needed:&lt;/b&gt; COMMENTS_USER or COMMENTS_ADMIN
  """
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

  @doc """
  Return a comment

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
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

  @doc """
  Returns a page of comments

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
  def get_comments(context, context_id, size, page) do
    method = [method: :get]
    url = [url: "/comments"]
    query_params = [query: [{:"context", context}, {:"context_id", context_id}, {:"size", size}, {:"page", page}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Update a comment

  &lt;b&gt;Permissions Needed:&lt;/b&gt; COMMENTS_USER or COMMENTS_ADMIN
  """
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
