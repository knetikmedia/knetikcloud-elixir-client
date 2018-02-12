defmodule KnetikPlatformAPIDocumentationLatest.Api.Objects do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Objects.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Create an object

  &lt;b&gt;Permissions Needed:&lt;/b&gt; INVENTORY_ADMIN
  """
  def create_object_item(template_id, cascade, object_item) do
    method = [method: :post]
    url = [url: "/objects/#{template_id}"]
    query_params = [query: [{:"cascade", cascade}]]
    header_params = []
    body_params = [body: object_item]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Create an object template

  Object templates define a type of entitlement and the properties they have. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  """
  def create_object_template(template) do
    method = [method: :post]
    url = [url: "/objects/templates"]
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
  Delete an object

  &lt;b&gt;Permissions Needed:&lt;/b&gt; INVENTORY_ADMIN
  """
  def delete_object_item(template_id, object_id) do
    method = [method: :delete]
    url = [url: "/objects/{template_id}/#{object_id}"]
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
  Delete an entitlement template

  If cascade &#x3D; &#39;detach&#39;, it will force delete the template even if it&#39;s attached to other objects. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  """
  def delete_object_template(id, cascade) do
    method = [method: :delete]
    url = [url: "/objects/templates/#{id}"]
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
  Get a single object

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
  def get_object_item(template_id, object_id) do
    method = [method: :get]
    url = [url: "/objects/{template_id}/#{object_id}"]
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
  List and search objects

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
  def get_object_items(template_id, size, page, order) do
    method = [method: :get]
    url = [url: "/objects/#{template_id}"]
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
  Get a single entitlement template

  &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN or ACHIEVEMENTS_ADMIN
  """
  def get_object_template(id) do
    method = [method: :get]
    url = [url: "/objects/templates/#{id}"]
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
  List and search entitlement templates

  &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN or ACHIEVEMENTS_ADMIN
  """
  def get_object_templates(size, page, order) do
    method = [method: :get]
    url = [url: "/objects/templates"]
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
  Update an object

  &lt;b&gt;Permissions Needed:&lt;/b&gt; INVENTORY_ADMIN
  """
  def update_object_item(template_id, object_id, cascade, object_item) do
    method = [method: :put]
    url = [url: "/objects/{template_id}/#{object_id}"]
    query_params = [query: [{:"cascade", cascade}]]
    header_params = []
    body_params = [body: object_item]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Update an entitlement template

  &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  """
  def update_object_template(id, template) do
    method = [method: :put]
    url = [url: "/objects/templates/#{id}"]
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
