defmodule KnetikPlatformAPIDocumentationLatest.Api.ReportingSubscriptions do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.ReportingSubscriptions.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Get a list of available subscription reports in most recent first order

  
  """
  def get_subscription_reports(size, page) do
    method = [method: :get]
    url = [url: "/reporting/subscription"]
    query_params = [query: [{:"size", size}, {:"page", page}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
