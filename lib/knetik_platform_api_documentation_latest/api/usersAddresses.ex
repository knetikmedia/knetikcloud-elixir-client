defmodule KnetikPlatformAPIDocumentationLatest.Api.UsersAddresses do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.UsersAddresses.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Create a new address

  &lt;b&gt;Permissions Needed:&lt;/b&gt; USERS_ADMIN or owner
  """
  def create_address(user_id, saved_address_resource) do
    method = [method: :post]
    url = [url: "/users/#{user_id}/addresses"]
    query_params = []
    header_params = []
    body_params = [body: saved_address_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Delete an address

  &lt;b&gt;Permissions Needed:&lt;/b&gt; USERS_ADMIN or owner
  """
  def delete_address(user_id, id) do
    method = [method: :delete]
    url = [url: "/users/{user_id}/addresses/#{id}"]
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
  Get a single address

  &lt;b&gt;Permissions Needed:&lt;/b&gt; USERS_ADMIN or owner
  """
  def get_address(user_id, id) do
    method = [method: :get]
    url = [url: "/users/{user_id}/addresses/#{id}"]
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
  List and search addresses

  &lt;b&gt;Permissions Needed:&lt;/b&gt; USERS_ADMIN or owner
  """
  def get_addresses(user_id, size, page, order) do
    method = [method: :get]
    url = [url: "/users/#{user_id}/addresses"]
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
  Update an address

  &lt;b&gt;Permissions Needed:&lt;/b&gt; USERS_ADMIN or owner
  """
  def update_address(user_id, id, saved_address_resource) do
    method = [method: :put]
    url = [url: "/users/{user_id}/addresses/#{id}"]
    query_params = []
    header_params = []
    body_params = [body: saved_address_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
