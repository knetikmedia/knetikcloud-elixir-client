defmodule KnetikPlatformAPIDocumentationLatest.Api.AuthRoles do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.AuthRoles.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://devsandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Create a new role

  
  """
  def create_role(role_resource) do
    method = [method: :post]
    url = [url: "/auth/roles"]
    query_params = []
    header_params = []
    body_params = [body: role_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Delete a role

  
  """
  def delete_role(role, force) do
    method = [method: :delete]
    url = [url: "/auth/roles/#{role}"]
    query_params = [query: [{:"force", force}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Get roles for a client

  
  """
  def get_client_roles(client_key) do
    method = [method: :get]
    url = [url: "/auth/clients/#{client_key}/roles"]
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
  Get a single role

  
  """
  def get_role(role) do
    method = [method: :get]
    url = [url: "/auth/roles/#{role}"]
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
  List and search roles

  
  """
  def get_roles(filter_name, filter_role, size, page, order) do
    method = [method: :get]
    url = [url: "/auth/roles"]
    query_params = [query: [{:"filter_name", filter_name}, {:"filter_role", filter_role}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Get roles for a user

  
  """
  def get_user_roles(user_id) do
    method = [method: :get]
    url = [url: "/auth/users/#{user_id}/roles"]
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
  Set roles for a client

  
  """
  def set_client_roles(client_key, roles_list) do
    method = [method: :put]
    url = [url: "/auth/clients/#{client_key}/roles"]
    query_params = []
    header_params = []
    body_params = [body: roles_list]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Set permissions for a role

  
  """
  def set_permissions_for_role(role, permissions_list) do
    method = [method: :put]
    url = [url: "/auth/roles/#{role}/permissions"]
    query_params = []
    header_params = []
    body_params = [body: permissions_list]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Set roles for a user

  
  """
  def set_user_roles(user_id, roles_list) do
    method = [method: :put]
    url = [url: "/auth/users/#{user_id}/roles"]
    query_params = []
    header_params = []
    body_params = [body: roles_list]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Update a role

  
  """
  def update_role(role, role_resource) do
    method = [method: :put]
    url = [url: "/auth/roles/#{role}"]
    query_params = []
    header_params = []
    body_params = [body: role_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
