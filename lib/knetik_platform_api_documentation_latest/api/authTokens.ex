defmodule KnetikPlatformAPIDocumentationLatest.Api.AuthTokens do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.AuthTokens.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Delete tokens by username, client id, or both

  &lt;b&gt;Permissions Needed:&lt;/b&gt; TOKENS_ADMIN
  """
  def delete_tokens(username, client_id) do
    method = [method: :delete]
    url = [url: "/auth/tokens"]
    query_params = [query: [{:"username", username}, {:"client_id", client_id}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Get a single token by username and client id

  &lt;b&gt;Permissions Needed:&lt;/b&gt; TOKENS_ADMIN
  """
  def get_token(username, client_id) do
    method = [method: :get]
    url = [url: "/auth/tokens/{username}/#{client_id}"]
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
  List usernames and client ids

  Token value not shown. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TOKENS_ADMIN
  """
  def get_tokens(filter_client_id, filter_username, size, page, order) do
    method = [method: :get]
    url = [url: "/auth/tokens"]
    query_params = [query: [{:"filter_client_id", filter_client_id}, {:"filter_username", filter_username}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
