defmodule KnetikPlatformAPIDocumentationLatest.Api.ReportingRevenue do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.ReportingRevenue.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  def get_item_revenue(currency_code, start_date, end_date) do
    method = [method: :get]
    url = [url: "/reporting/revenue/item-sales/#{currency_code}"]
    query_params = [query: [{:"startDate", start_date}, {:"endDate", end_date}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_refund_revenue(currency_code, start_date, end_date) do
    method = [method: :get]
    url = [url: "/reporting/revenue/refunds/#{currency_code}"]
    query_params = [query: [{:"startDate", start_date}, {:"endDate", end_date}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_revenue_by_country(currency_code, start_date, end_date, size, page) do
    method = [method: :get]
    url = [url: "/reporting/revenue/countries/#{currency_code}"]
    query_params = [query: [{:"startDate", start_date}, {:"endDate", end_date}, {:"size", size}, {:"page", page}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_revenue_by_item(currency_code, start_date, end_date, size, page) do
    method = [method: :get]
    url = [url: "/reporting/revenue/products/#{currency_code}"]
    query_params = [query: [{:"startDate", start_date}, {:"endDate", end_date}, {:"size", size}, {:"page", page}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_subscription_revenue(currency_code, start_date, end_date) do
    method = [method: :get]
    url = [url: "/reporting/revenue/subscription-sales/#{currency_code}"]
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
