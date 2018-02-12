defmodule KnetikPlatformAPIDocumentationLatest.Api.Logs do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Logs.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Add a user log entry

  &lt;b&gt;Permissions Needed:&lt;/b&gt; owner
  """
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

  @doc """
  Get an existing BRE event log entry by id

  &lt;b&gt;Permissions Needed:&lt;/b&gt; BRE_RULE_ENGINE_EVENTS_ADMIN
  """
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

  @doc """
  Returns a list of BRE event log entries

  &lt;b&gt;Permissions Needed:&lt;/b&gt; BRE_RULE_ENGINE_EVENTS_ADMIN
  """
  def get_bre_event_logs(filter_start_date, filter_event_name, filter_event_id, size, page, order, filter_rule_id) do
    method = [method: :get]
    url = [url: "/bre/logs/event-log"]
    query_params = [query: [{:"filter_start_date", filter_start_date}, {:"filter_event_name", filter_event_name}, {:"filter_event_id", filter_event_id}, {:"size", size}, {:"page", page}, {:"order", order}, {:"filter_rule_id", filter_rule_id}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Get an existing forward log entry by id

  &lt;b&gt;Permissions Needed:&lt;/b&gt; BRE_RULE_ENGINE_EVENTS_ADMIN
  """
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

  @doc """
  Returns a list of forward log entries

  &lt;b&gt;Permissions Needed:&lt;/b&gt; BRE_RULE_ENGINE_EVENTS_ADMIN
  """
  def get_bre_forward_logs(filter_start_date, filter_end_date, filter_status_code, filter_url, size, page, order) do
    method = [method: :get]
    url = [url: "/bre/logs/forward-log"]
    query_params = [query: [{:"filter_start_date", filter_start_date}, {:"filter_end_date", filter_end_date}, {:"filter_status_code", filter_status_code}, {:"filter_url", filter_url}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Returns a user log entry by id

  &lt;b&gt;Permissions Needed:&lt;/b&gt; LOGS_ADMIN or owner
  """
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

  @doc """
  Returns a page of user logs entries

  &lt;b&gt;Permissions Needed:&lt;/b&gt; LOGS_ADMIN or owner
  """
  def get_user_logs(filter_user, filter_action_name, size, page, order) do
    method = [method: :get]
    url = [url: "/audit/logs"]
    query_params = [query: [{:"filter_user", filter_user}, {:"filter_action_name", filter_action_name}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
