defmodule KnetikPlatformAPIDocumentationLatest.Api.ReportingRevenue do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.ReportingRevenue.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Get item revenue info

  Get basic info about revenue from sales of items and bundles (not subscriptions, shipping, etc), summed up within a time range. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; REPORTING_REVENUE_ADMIN
  """
  def get_item_revenue(currency_code, start_date, end_date) do
    method = [method: :get]
    url = [url: "/reporting/revenue/item-sales/#{currency_code}"]
    query_params = [query: [{:"start_date", start_date}, {:"end_date", end_date}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Get refund revenue info

  Get basic info about revenue loss from refunds (for all item types), summed up within a time range. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; REPORTING_REVENUE_ADMIN
  """
  def get_refund_revenue(currency_code, start_date, end_date) do
    method = [method: :get]
    url = [url: "/reporting/revenue/refunds/#{currency_code}"]
    query_params = [query: [{:"start_date", start_date}, {:"end_date", end_date}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Get revenue info by country

  Get basic info about revenue from sales of all types, summed up within a time range and split out by country. Sorted for largest revenue at the top. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; REPORTING_REVENUE_ADMIN
  """
  def get_revenue_by_country(currency_code, start_date, end_date, size, page) do
    method = [method: :get]
    url = [url: "/reporting/revenue/countries/#{currency_code}"]
    query_params = [query: [{:"start_date", start_date}, {:"end_date", end_date}, {:"size", size}, {:"page", page}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Get revenue info by item

  Get basic info about revenue from sales of all types, summed up within a time range and split out by specific item. Sorted for largest revenue at the top. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; REPORTING_REVENUE_ADMIN
  """
  def get_revenue_by_item(currency_code, start_date, end_date, size, page) do
    method = [method: :get]
    url = [url: "/reporting/revenue/products/#{currency_code}"]
    query_params = [query: [{:"start_date", start_date}, {:"end_date", end_date}, {:"size", size}, {:"page", page}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Get subscription revenue info

  Get basic info about revenue from sales of new subscriptions as well as recurring payemnts, summed up within a time range. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; REPORTING_REVENUE_ADMIN
  """
  def get_subscription_revenue(currency_code, start_date, end_date) do
    method = [method: :get]
    url = [url: "/reporting/revenue/subscription-sales/#{currency_code}"]
    query_params = [query: [{:"start_date", start_date}, {:"end_date", end_date}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
