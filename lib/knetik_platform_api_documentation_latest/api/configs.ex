defmodule KnetikPlatformAPIDocumentationLatest.Api.Configs do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Configs.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://jsapi-integration.us-east-1.elasticbeanstalk.com"
  plug Tesla.Middleware.JSON

  @doc """
  Create a new config

  &lt;b&gt;Permissions Needed:&lt;/b&gt; CONFIGS_ADMIN
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

  &lt;b&gt;Permissions Needed:&lt;/b&gt; CONFIGS_ADMIN
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

  Only configs that are public readable will be shown without admin access. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
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

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
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

  &lt;b&gt;Permissions Needed:&lt;/b&gt; CONFIGS_ADMIN
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
