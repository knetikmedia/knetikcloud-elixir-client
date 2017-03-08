defmodule KnetikPlatformAPIDocumentationLatest.Api.MediaModeration do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.MediaModeration.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

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

  def get_moderation_reports(exclude_resolved, filter_context, size, page) do
    method = [method: :get]
    url = [url: "/moderation/reports"]
    query_params = [query: [{:"excludeResolved", exclude_resolved}, {:"filterContext", filter_context}, {:"size", size}, {:"page", page}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

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
