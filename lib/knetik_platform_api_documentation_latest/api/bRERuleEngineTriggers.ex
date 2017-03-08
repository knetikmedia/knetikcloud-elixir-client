defmodule KnetikPlatformAPIDocumentationLatest.Api.BRERuleEngineTriggers do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.BRERuleEngineTriggers.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  def create_bre_trigger(bre_trigger_resource) do
    method = [method: :post]
    url = [url: "/bre/triggers"]
    query_params = []
    header_params = []
    body_params = [body: bre_trigger_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def delete_bre_trigger(event_name) do
    method = [method: :delete]
    url = [url: "/bre/triggers/#{event_name}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_bre_trigger(event_name) do
    method = [method: :get]
    url = [url: "/bre/triggers/#{event_name}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_bre_triggers(filter_system, filter_category, filter_name, size, page) do
    method = [method: :get]
    url = [url: "/bre/triggers"]
    query_params = [query: [{:"filterSystem", filter_system}, {:"filterCategory", filter_category}, {:"filterName", filter_name}, {:"size", size}, {:"page", page}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def update_bre_trigger(event_name, bre_trigger_resource) do
    method = [method: :put]
    url = [url: "/bre/triggers/#{event_name}"]
    query_params = []
    header_params = []
    body_params = [body: bre_trigger_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
