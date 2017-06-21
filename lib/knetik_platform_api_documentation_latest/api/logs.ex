defmodule KnetikPlatformAPIDocumentationLatest.Api.Logs do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Logs.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  def add_user_log(log_entry) do
    method = [method: :post]
    url = [url: "/audit/logs"]
    query_params = []
    header_params = []
    body_params = [body: log_entry]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_bre_event_log(id) do
    method = [method: :get]
    url = [url: "/bre/logs/event-log/#{id}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_bre_event_logs(filter_start_date, filter_event_name, filter_event_id, size, page, order) do
    method = [method: :get]
    url = [url: "/bre/logs/event-log"]
    query_params = [query: [{:"filterStartDate", filter_start_date}, {:"filterEventName", filter_event_name}, {:"filterEventId", filter_event_id}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_bre_forward_log(id) do
    method = [method: :get]
    url = [url: "/bre/logs/forward-log/#{id}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_bre_forward_logs(filter_start_date, filter_end_date, filter_status_code, size, page, order) do
    method = [method: :get]
    url = [url: "/bre/logs/forward-log"]
    query_params = [query: [{:"filterStartDate", filter_start_date}, {:"filterEndDate", filter_end_date}, {:"filterStatusCode", filter_status_code}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_user_log(id) do
    method = [method: :get]
    url = [url: "/audit/logs/#{id}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_user_logs(filter_user, filter_action_name, size, page, order) do
    method = [method: :get]
    url = [url: "/audit/logs"]
    query_params = [query: [{:"filterUser", filter_user}, {:"filterActionName", filter_action_name}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
