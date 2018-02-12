defmodule KnetikPlatformAPIDocumentationLatest.Api.BRERuleEngineCategories do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.BRERuleEngineCategories.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Create a BRE category template

  Templates define a type of BRE category and the properties they have. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  """
  def create_bre_category_template(template) do
    method = [method: :post]
    url = [url: "/bre/categories/templates"]
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
  Delete a BRE category template

  If cascade &#x3D; &#39;detach&#39;, it will force delete the template even if it&#39;s attached to other objects. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  """
  def delete_bre_category_template(id, cascade) do
    method = [method: :delete]
    url = [url: "/bre/categories/templates/#{id}"]
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
  List categories

  &lt;b&gt;Permissions Needed:&lt;/b&gt; BRE_RULE_ENGINE_CATEGORIES_USER
  """
  def get_bre_categories(size, page) do
    method = [method: :get]
    url = [url: "/bre/categories"]
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
  Get a single category

  &lt;b&gt;Permissions Needed:&lt;/b&gt; BRE_RULE_ENGINE_CATEGORIES_USER
  """
  def get_bre_category(name) do
    method = [method: :get]
    url = [url: "/bre/categories/#{name}"]
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
  Get a single BRE category template

  &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN or BRE_RULE_ENGINE_CATEGORIES_ADMIN
  """
  def get_bre_category_template(id) do
    method = [method: :get]
    url = [url: "/bre/categories/templates/#{id}"]
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
  List and search BRE category templates

  &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN or BRE_RULE_ENGINE_CATEGORIES_ADMIN
  """
  def get_bre_category_templates(size, page, order) do
    method = [method: :get]
    url = [url: "/bre/categories/templates"]
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
  Update a category

  &lt;b&gt;Permissions Needed:&lt;/b&gt; BRE_RULE_ENGINE_CATEGORIES_ADMIN
  """
  def update_bre_category(name, category) do
    method = [method: :put]
    url = [url: "/bre/categories/#{name}"]
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
  Update a BRE category template

  &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  """
  def update_bre_category_template(id, template) do
    method = [method: :put]
    url = [url: "/bre/categories/templates/#{id}"]
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
