defmodule KnetikPlatformAPIDocumentationLatest.Api.ContentArticles do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.ContentArticles.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Create a new article

  Articles are blobs of text with titles, a category and assets. Formatting and display of the text is in the hands of the front end.&lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions:&lt;/b&gt; ARTICLES_ADMIN
  """
  def create_article(article_resource) do
    method = [method: :post]
    url = [url: "/content/articles"]
    query_params = []
    header_params = []
    body_params = [body: article_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Create an article template

  Article Templates define a type of article and the properties they have. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  """
  def create_article_template(article_template_resource) do
    method = [method: :post]
    url = [url: "/content/articles/templates"]
    query_params = []
    header_params = []
    body_params = [body: article_template_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Delete an existing article

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ARTICLES_ADMIN
  """
  def delete_article(id) do
    method = [method: :delete]
    url = [url: "/content/articles/#{id}"]
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
  Delete an article template

  If cascade &#x3D; &#39;detach&#39;, it will force delete the template even if it&#39;s attached to other objects. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  """
  def delete_article_template(id, cascade) do
    method = [method: :delete]
    url = [url: "/content/articles/templates/#{id}"]
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
  Get a single article

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
  def get_article(id) do
    method = [method: :get]
    url = [url: "/content/articles/#{id}"]
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
  Get a single article template

  &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN or ARTICLES_ADMIN
  """
  def get_article_template(id) do
    method = [method: :get]
    url = [url: "/content/articles/templates/#{id}"]
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
  List and search article templates

  &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN or ARTICLES_ADMIN
  """
  def get_article_templates(size, page, order) do
    method = [method: :get]
    url = [url: "/content/articles/templates"]
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
  List and search articles

  Get a list of articles with optional filtering. Assets will not be filled in on the resources returned. Use &#39;Get a single article&#39; to retrieve the full resource with assets for a given item as needed. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
  def get_articles(filter_active_only, filter_category, filter_tagset, filter_tag_intersection, filter_tag_exclusion, filter_title, size, page, order) do
    method = [method: :get]
    url = [url: "/content/articles"]
    query_params = [query: [{:"filter_active_only", filter_active_only}, {:"filter_category", filter_category}, {:"filter_tagset", filter_tagset}, {:"filter_tag_intersection", filter_tag_intersection}, {:"filter_tag_exclusion", filter_tag_exclusion}, {:"filter_title", filter_title}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Update an existing article

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ARTICLES_ADMIN
  """
  def update_article(id, article_resource) do
    method = [method: :put]
    url = [url: "/content/articles/#{id}"]
    query_params = []
    header_params = []
    body_params = [body: article_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Update an article template

  &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  """
  def update_article_template(id, article_template_resource) do
    method = [method: :put]
    url = [url: "/content/articles/templates/#{id}"]
    query_params = []
    header_params = []
    body_params = [body: article_template_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
