defmodule KnetikPlatformAPIDocumentationLatest.Api.Categories do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Categories.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Create a new category

  &lt;b&gt;Permissions Needed:&lt;/b&gt; CATEGORIES_ADMIN
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

  Templates define a type of category and the properties they have. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
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

  &lt;b&gt;Permissions Needed:&lt;/b&gt; CATEGORIES_ADMIN
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

  If cascade &#x3D; &#39;detach&#39;, it will force delete the template even if it&#39;s attached to other objects. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
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

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
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

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
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

  &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN or CATEGORIES_ADMIN
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

  &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN or CATEGORIES_ADMIN
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

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
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

  &lt;b&gt;Permissions Needed:&lt;/b&gt; CATEGORIES_ADMIN
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

  &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
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
