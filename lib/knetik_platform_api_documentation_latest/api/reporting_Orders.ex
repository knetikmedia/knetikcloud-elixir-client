defmodule KnetikPlatformAPIDocumentationLatest.Api.Reporting_Orders do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Reporting_Orders.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://jsapi-integration.us-east-1.elasticbeanstalk.com"
  plug Tesla.Middleware.JSON

  @doc """
  Retrieve invoice counts aggregated by time ranges

  &lt;b&gt;Permissions Needed:&lt;/b&gt; REPORTING_ORDERS_ADMIN
  """
  def get_invoice_reports(currency_code, granularity, filter_payment_status, filter_fulfillment_status, start_date, end_date, size, page) do
    method = [method: :get]
    url = [url: "/reporting/orders/count/#{currency_code}"]
    query_params = [query: [{:"granularity", granularity}, {:"filter_payment_status", filter_payment_status}, {:"filter_fulfillment_status", filter_fulfillment_status}, {:"start_date", start_date}, {:"end_date", end_date}, {:"size", size}, {:"page", page}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
