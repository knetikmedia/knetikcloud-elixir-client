defmodule KnetikPlatformAPIDocumentationLatest.Api.AuthPermissions do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.AuthPermissions.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://devsandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Create a new permission

  
  """
  def create_permission(permission_resource) do
    method = [method: :post]
    url = [url: "/auth/permissions"]
    query_params = []
    header_params = []
    body_params = [body: permission_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Delete a permission

  
  """
  def delete_permission(permission, force) do
    method = [method: :delete]
    url = [url: "/auth/permissions/#{permission}"]
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
  Get a single permission

  
  """
  def get_permission(permission) do
    method = [method: :get]
    url = [url: "/auth/permissions/#{permission}"]
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
  List and search permissions

  
  """
  def get_permissions(size, page, order) do
    method = [method: :get]
    url = [url: "/auth/permissions"]
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
  Update a permission

  
  """
  def update_permission(permission, permission_resource) do
    method = [method: :put]
    url = [url: "/auth/permissions/#{permission}"]
    query_params = []
    header_params = []
    body_params = [body: permission_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
