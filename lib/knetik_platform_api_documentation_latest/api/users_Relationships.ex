defmodule KnetikPlatformAPIDocumentationLatest.Api.Users_Relationships do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Users_Relationships.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://jsapi-integration.us-east-1.elasticbeanstalk.com"
  plug Tesla.Middleware.JSON

  @doc """
  Create a user relationship

  &lt;b&gt;Permissions Needed:&lt;/b&gt; RELATIONSHIPS_ADMIN
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

  &lt;b&gt;Permissions Needed:&lt;/b&gt; RELATIONSHIPS_ADMIN
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

  &lt;b&gt;Permissions Needed:&lt;/b&gt; RELATIONSHIPS_USER or RELATIONSHIPS_ADMIN
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

  &lt;b&gt;Permissions Needed:&lt;/b&gt; RELATIONSHIPS_USER or RELATIONSHIPS_ADMIN
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

  &lt;b&gt;Permissions Needed:&lt;/b&gt; RELATIONSHIPS_ADMIN
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
