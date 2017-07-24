defmodule KnetikPlatformAPIDocumentationLatest.Api.MediaModeration do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.MediaModeration.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Get a flag report

  
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

  Context can be either a free-form string or a pre-defined context name
  """
  def get_moderation_reports(exclude_resolved, filter_context, size, page) do
    method = [method: :get]
    url = [url: "/moderation/reports"]
    query_params = [query: [{:"exclude_resolved", exclude_resolved}, {:"filter_context", filter_context}, {:"size", size}, {:"page", page}]]
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

  Lets you set the resolution of a report. Resolution types is {banned,ignore} in case of &#39;banned&#39; you will need to pass the reason.
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
