defmodule KnetikPlatformAPIDocumentationLatest.Api.AuthTokens do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.AuthTokens.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  def delete_token(username, client_id) do
    method = [method: :delete]
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

  def delete_tokens(username) do
    method = [method: :delete]
    url = [url: "/auth/tokens/#{username}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

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

  def get_tokens(filter_client_id, filter_username, size, page, order) do
    method = [method: :get]
    url = [url: "/auth/tokens"]
    query_params = [query: [{:"filterClientId", filter_client_id}, {:"filterUsername", filter_username}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
