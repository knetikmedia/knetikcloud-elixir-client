defmodule KnetikPlatformAPIDocumentationLatest.Api.BRERuleEngineGlobals do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.BRERuleEngineGlobals.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  def create_bre_global(bre_global_resource) do
    method = [method: :post]
    url = [url: "/bre/globals/definitions"]
    query_params = []
    header_params = []
    body_params = [body: bre_global_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def delete_bre_global(id) do
    method = [method: :delete]
    url = [url: "/bre/globals/definitions/#{id}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_bre_global(id) do
    method = [method: :get]
    url = [url: "/bre/globals/definitions/#{id}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_bre_globals(filter_system, size, page) do
    method = [method: :get]
    url = [url: "/bre/globals/definitions"]
    query_params = [query: [{:"filterSystem", filter_system}, {:"size", size}, {:"page", page}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def update_bre_global(id, bre_global_resource) do
    method = [method: :put]
    url = [url: "/bre/globals/definitions/#{id}"]
    query_params = []
    header_params = []
    body_params = [body: bre_global_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
