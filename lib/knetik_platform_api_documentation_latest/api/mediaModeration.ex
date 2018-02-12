defmodule KnetikPlatformAPIDocumentationLatest.Api.MediaModeration do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.MediaModeration.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Add a flag

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
  def add_flag(flag_resource) do
    method = [method: :post]
    url = [url: "/moderation/flags"]
    query_params = []
    header_params = []
    body_params = [body: flag_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Delete a flag

  &lt;b&gt;Permissions Needed:&lt;/b&gt; MODERATION_ADMIN or owner
  """
  def delete_flag(context_name, context_id, user_id) do
    method = [method: :delete]
    url = [url: "/moderation/flags"]
    query_params = [query: [{:"context_name", context_name}, {:"context_id", context_id}, {:"user_id", user_id}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Returns a page of flags

  &lt;b&gt;Permissions Needed:&lt;/b&gt; MODERATION_ADMIN or owner
  """
  def get_flags(filter_context, filter_context_id, filter_user_id, size, page) do
    method = [method: :get]
    url = [url: "/moderation/flags"]
    query_params = [query: [{:"filter_context", filter_context}, {:"filter_context_id", filter_context_id}, {:"filter_user_id", filter_user_id}, {:"size", size}, {:"page", page}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Get a flag report

  &lt;b&gt;Permissions Needed:&lt;/b&gt; MODERATION_ADMIN
  """
  def get_moderation_report(id) do
    method = [method: :get]
    url = [url: "/moderation/reports/#{id}"]
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
  Returns a page of flag reports

  Context can be either a free-form string or a pre-defined context name. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; MODERATION_ADMIN
  """
  def get_moderation_reports(exclude_resolved, filter_context, filter_context_id, size, page) do
    method = [method: :get]
    url = [url: "/moderation/reports"]
    query_params = [query: [{:"exclude_resolved", exclude_resolved}, {:"filter_context", filter_context}, {:"filter_context_id", filter_context_id}, {:"size", size}, {:"page", page}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Update a flag report

  Lets you set the resolution of a report. Resolution types is {banned,ignore} in case of &#39;banned&#39; you will need to pass the reason. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; MODERATION_ADMIN
  """
  def update_moderation_report(id, flag_report_resource) do
    method = [method: :put]
    url = [url: "/moderation/reports/#{id}"]
    query_params = []
    header_params = []
    body_params = [body: flag_report_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
