defmodule KnetikPlatformAPIDocumentationLatest.Api.UsersRelationships do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.UsersRelationships.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://devsandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Create a user relationship

  
  """
  def create_user_relationship(relationship) do
    method = [method: :post]
    url = [url: "/users/relationships"]
    query_params = []
    header_params = []
    body_params = [body: relationship]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Delete a user relationship

  
  """
  def delete_user_relationship(id) do
    method = [method: :delete]
    url = [url: "/users/relationships/#{id}"]
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
  Get a user relationship

  
  """
  def get_user_relationship(id) do
    method = [method: :get]
    url = [url: "/users/relationships/#{id}"]
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
  Get a list of user relationships

  
  """
  def get_user_relationships(size, page, order) do
    method = [method: :get]
    url = [url: "/users/relationships"]
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
  Update a user relationship

  
  """
  def update_user_relationship(id, relationship) do
    method = [method: :put]
    url = [url: "/users/relationships/#{id}"]
    query_params = []
    header_params = []
    body_params = [body: relationship]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
