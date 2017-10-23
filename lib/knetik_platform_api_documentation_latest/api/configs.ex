defmodule KnetikPlatformAPIDocumentationLatest.Api.Configs do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Configs.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Create a new config

  
  """
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

  @doc """
  Delete an existing config

  
  """
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

  @doc """
  Get a single config

  Only configs that are public readable will be shown without admin access
  """
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

  @doc """
  List and search configs

  
  """
  def get_configs(filter_search, size, page, order) do
    method = [method: :get]
    url = [url: "/configs"]
    query_params = [query: [{:"filter_search", filter_search}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Update an existing config

  
  """
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
