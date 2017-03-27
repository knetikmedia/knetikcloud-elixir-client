defmodule KnetikPlatformAPIDocumentationLatest.Api.AuthRoles do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.AuthRoles.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

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

  def get_roles(size, page, order) do
    method = [method: :get]
    url = [url: "/auth/roles"]
    query_params = [query: [{:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

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
