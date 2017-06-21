defmodule KnetikPlatformAPIDocumentationLatest.Api.UsersRelationships do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.UsersRelationships.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

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
