defmodule KnetikPlatformAPIDocumentationLatest.Api.Categories do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Categories.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://devsandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Create a new category

  
  """
  def create_category(category) do
    method = [method: :post]
    url = [url: "/categories"]
    query_params = []
    header_params = []
    body_params = [body: category]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Create a category template

  Templates define a type of category and the properties they have
  """
  def create_category_template(template) do
    method = [method: :post]
    url = [url: "/categories/templates"]
    query_params = []
    header_params = []
    body_params = [body: template]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Delete an existing category

  
  """
  def delete_category(id) do
    method = [method: :delete]
    url = [url: "/categories/#{id}"]
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
  Delete a category template

  If cascade &#x3D; &#39;detach&#39;, it will force delete the template even if it&#39;s attached to other objects
  """
  def delete_category_template(id, cascade) do
    method = [method: :delete]
    url = [url: "/categories/templates/#{id}"]
    query_params = [query: [{:"cascade", cascade}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  List and search categories with optional filters

  
  """
  def get_categories(filter_search, filter_active, size, page, order) do
    method = [method: :get]
    url = [url: "/categories"]
    query_params = [query: [{:"filter_search", filter_search}, {:"filter_active", filter_active}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Get a single category

  
  """
  def get_category(id) do
    method = [method: :get]
    url = [url: "/categories/#{id}"]
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
  Get a single category template

  
  """
  def get_category_template(id) do
    method = [method: :get]
    url = [url: "/categories/templates/#{id}"]
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
  List and search category templates

  
  """
  def get_category_templates(size, page, order) do
    method = [method: :get]
    url = [url: "/categories/templates"]
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
  List all trivia tags in the system

  
  """
  def get_tags(size, page) do
    method = [method: :get]
    url = [url: "/tags"]
    query_params = [query: [{:"size", size}, {:"page", page}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Update an existing category

  
  """
  def update_category(id, category) do
    method = [method: :put]
    url = [url: "/categories/#{id}"]
    query_params = []
    header_params = []
    body_params = [body: category]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Update a category template

  
  """
  def update_category_template(id, template) do
    method = [method: :put]
    url = [url: "/categories/templates/#{id}"]
    query_params = []
    header_params = []
    body_params = [body: template]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
