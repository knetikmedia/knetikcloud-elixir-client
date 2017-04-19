defmodule KnetikPlatformAPIDocumentationLatest.Api.ReportingOrders do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.ReportingOrders.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  def get_invoice_reports(currency_code, granularity, filter_payment_status, filter_fulfillment_status, start_date, end_date) do
    method = [method: :get]
    url = [url: "/reporting/orders/count/#{currency_code}"]
    query_params = [query: [{:"granularity", granularity}, {:"filterPaymentStatus", filter_payment_status}, {:"filterFulfillmentStatus", filter_fulfillment_status}, {:"startDate", start_date}, {:"endDate", end_date}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
