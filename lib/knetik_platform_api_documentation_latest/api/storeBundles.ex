defmodule KnetikPlatformAPIDocumentationLatest.Api.StoreBundles do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.StoreBundles.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  def create_bundle_item(cascade, bundle_item) do
    method = [method: :post]
    url = [url: "/store/bundles"]
    query_params = [query: [{:"cascade", cascade}]]
    header_params = []
    body_params = [body: bundle_item]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def create_bundle_template(bundle_template_resource) do
    method = [method: :post]
    url = [url: "/store/bundles/templates"]
    query_params = []
    header_params = []
    body_params = [body: bundle_template_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def delete_bundle_item(id) do
    method = [method: :delete]
    url = [url: "/store/bundles/#{id}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def delete_bundle_template(id, cascade) do
    method = [method: :delete]
    url = [url: "/store/bundles/templates/#{id}"]
    query_params = [query: [{:"cascade", cascade}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_bundle_item(id) do
    method = [method: :get]
    url = [url: "/store/bundles/#{id}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_bundle_template(id) do
    method = [method: :get]
    url = [url: "/store/bundles/templates/#{id}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_bundle_templates(size, page, order) do
    method = [method: :get]
    url = [url: "/store/bundles/templates"]
    query_params = [query: [{:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def update_bundle_item(id, cascade, bundle_item) do
    method = [method: :put]
    url = [url: "/store/bundles/#{id}"]
    query_params = [query: [{:"cascade", cascade}]]
    header_params = []
    body_params = [body: bundle_item]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def update_bundle_template(id, bundle_template_resource) do
    method = [method: :put]
    url = [url: "/store/bundles/templates/#{id}"]
    query_params = []
    header_params = []
    body_params = [body: bundle_template_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
