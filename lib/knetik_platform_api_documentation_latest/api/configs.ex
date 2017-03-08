defmodule KnetikPlatformAPIDocumentationLatest.Api.Configs do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Configs.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  def create_config(config) do
    method = [method: :post]
    url = [url: "/configs"]
    query_params = []
    header_params = []
    body_params = [body: config]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def delete_config(name) do
    method = [method: :delete]
    url = [url: "/configs/#{name}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_config(name) do
    method = [method: :get]
    url = [url: "/configs/#{name}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_configs(filter_search, size, page, order) do
    method = [method: :get]
    url = [url: "/configs"]
    query_params = [query: [{:"filterSearch", filter_search}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def update_config(name, config) do
    method = [method: :put]
    url = [url: "/configs/#{name}"]
    query_params = []
    header_params = []
    body_params = [body: config]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
