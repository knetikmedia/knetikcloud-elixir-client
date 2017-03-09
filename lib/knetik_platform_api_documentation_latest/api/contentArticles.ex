defmodule KnetikPlatformAPIDocumentationLatest.Api.ContentArticles do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.ContentArticles.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

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

  def get_articles(filter_category, filter_tagset, filter_title, size, page, order) do
    method = [method: :get]
    url = [url: "/content/articles"]
    query_params = [query: [{:"filterCategory", filter_category}, {:"filterTagset", filter_tagset}, {:"filterTitle", filter_title}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

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
