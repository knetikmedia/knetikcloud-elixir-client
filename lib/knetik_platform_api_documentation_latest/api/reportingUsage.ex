defmodule KnetikPlatformAPIDocumentationLatest.Api.ReportingUsage do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.ReportingUsage.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  def get_usage_by_day(start_date, end_date, combine_endpoints, method, url, size, page) do
    method = [method: :get]
    url = [url: "/reporting/usage/day"]
    query_params = [query: [{:"startDate", start_date}, {:"endDate", end_date}, {:"combineEndpoints", combine_endpoints}, {:"method", method}, {:"url", url}, {:"size", size}, {:"page", page}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_usage_by_hour(start_date, end_date, combine_endpoints, method, url, size, page) do
    method = [method: :get]
    url = [url: "/reporting/usage/hour"]
    query_params = [query: [{:"startDate", start_date}, {:"endDate", end_date}, {:"combineEndpoints", combine_endpoints}, {:"method", method}, {:"url", url}, {:"size", size}, {:"page", page}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_usage_by_minute(start_date, end_date, combine_endpoints, method, url, size, page) do
    method = [method: :get]
    url = [url: "/reporting/usage/minute"]
    query_params = [query: [{:"startDate", start_date}, {:"endDate", end_date}, {:"combineEndpoints", combine_endpoints}, {:"method", method}, {:"url", url}, {:"size", size}, {:"page", page}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_usage_by_month(start_date, end_date, combine_endpoints, method, url, size, page) do
    method = [method: :get]
    url = [url: "/reporting/usage/month"]
    query_params = [query: [{:"startDate", start_date}, {:"endDate", end_date}, {:"combineEndpoints", combine_endpoints}, {:"method", method}, {:"url", url}, {:"size", size}, {:"page", page}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_usage_by_year(start_date, end_date, combine_endpoints, method, url, size, page) do
    method = [method: :get]
    url = [url: "/reporting/usage/year"]
    query_params = [query: [{:"startDate", start_date}, {:"endDate", end_date}, {:"combineEndpoints", combine_endpoints}, {:"method", method}, {:"url", url}, {:"size", size}, {:"page", page}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_usage_endpoints(start_date, end_date) do
    method = [method: :get]
    url = [url: "/reporting/usage/endpoints"]
    query_params = [query: [{:"startDate", start_date}, {:"endDate", end_date}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
