defmodule KnetikPlatformAPIDocumentationLatest.Api.AuthClients do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.AuthClients.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  def create_client(client_resource) do
    method = [method: :post]
    url = [url: "/auth/clients"]
    query_params = []
    header_params = []
    body_params = [body: client_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def delete_client(client_key) do
    method = [method: :delete]
    url = [url: "/auth/clients/#{client_key}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_client(client_key) do
    method = [method: :get]
    url = [url: "/auth/clients/#{client_key}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_client_grant_types() do
    method = [method: :get]
    url = [url: "/auth/clients/grant-types"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_clients(size, page, order) do
    method = [method: :get]
    url = [url: "/auth/clients"]
    query_params = [query: [{:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def set_client_grant_types(client_key, grant_list) do
    method = [method: :put]
    url = [url: "/auth/clients/#{client_key}/grant-types"]
    query_params = []
    header_params = []
    body_params = [body: grant_list]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def set_client_redirect_uris(client_key, redirect_list) do
    method = [method: :put]
    url = [url: "/auth/clients/#{client_key}/redirect-uris"]
    query_params = []
    header_params = []
    body_params = [body: redirect_list]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def update_client(client_key, client_resource) do
    method = [method: :put]
    url = [url: "/auth/clients/#{client_key}"]
    query_params = []
    header_params = []
    body_params = [body: client_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
