defmodule KnetikPlatformAPIDocumentationLatest.Api.AuthClients do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.AuthClients.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Create a new client

  &lt;b&gt;Permissions Needed:&lt;/b&gt; CLIENTS_ADMIN
  """
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

  @doc """
  Delete a client

  &lt;b&gt;Permissions Needed:&lt;/b&gt; CLIENTS_ADMIN
  """
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

  @doc """
  Get a single client

  &lt;b&gt;Permissions Needed:&lt;/b&gt; CLIENTS_ADMIN
  """
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

  @doc """
  List available client grant types

  &lt;b&gt;Permissions Needed:&lt;/b&gt; CLIENTS_ADMIN
  """
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

  @doc """
  List and search clients

  &lt;b&gt;Permissions Needed:&lt;/b&gt; CLIENTS_ADMIN
  """
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

  @doc """
  Set grant types for a client

  &lt;b&gt;Permissions Needed:&lt;/b&gt; CLIENTS_ADMIN
  """
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

  @doc """
  Set redirect uris for a client

  &lt;b&gt;Permissions Needed:&lt;/b&gt; CLIENTS_ADMIN
  """
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

  @doc """
  Update a client

  &lt;b&gt;Permissions Needed:&lt;/b&gt; CLIENTS_ADMIN
  """
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
