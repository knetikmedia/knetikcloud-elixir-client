defmodule KnetikPlatformAPIDocumentationLatest.Api.Invoices do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Invoices.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  def create_invoice(req) do
    method = [method: :post]
    url = [url: "/invoices"]
    query_params = []
    header_params = []
    body_params = [body: req]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_ful_fillment_statuses() do
    method = [method: :get]
    url = [url: "/invoices/fulfillment-statuses"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_invoice(id) do
    method = [method: :get]
    url = [url: "/invoices/#{id}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_invoice_logs(id, size, page) do
    method = [method: :get]
    url = [url: "/invoices/#{id}/logs"]
    query_params = [query: [{:"size", size}, {:"page", page}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_invoices(filter_user, filter_email, filter_fulfillment_status, filter_payment_status, filter_item_name, filter_external_ref, filter_created_date, filter_vendor_ids, filter_currency, filter_shipping_state_name, filter_shipping_country_name, filter_shipping, filter_vendor_name, filter_sku, size, page, order) do
    method = [method: :get]
    url = [url: "/invoices"]
    query_params = [query: [{:"filterUser", filter_user}, {:"filterEmail", filter_email}, {:"filterFulfillmentStatus", filter_fulfillment_status}, {:"filterPaymentStatus", filter_payment_status}, {:"filterItemName", filter_item_name}, {:"filterExternalRef", filter_external_ref}, {:"filterCreatedDate", filter_created_date}, {:"filterVendorIds", filter_vendor_ids}, {:"filterCurrency", filter_currency}, {:"filterShippingStateName", filter_shipping_state_name}, {:"filterShippingCountryName", filter_shipping_country_name}, {:"filterShipping", filter_shipping}, {:"filterVendorName", filter_vendor_name}, {:"filterSku", filter_sku}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_payment_statuses() do
    method = [method: :get]
    url = [url: "/invoices/payment-statuses"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def pay_invoice(id, request) do
    method = [method: :post]
    url = [url: "/invoices/#{id}/payments"]
    query_params = []
    header_params = []
    body_params = [body: request]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def set_external_ref(id, external_ref) do
    method = [method: :put]
    url = [url: "/invoices/#{id}/external-ref"]
    query_params = []
    header_params = []
    body_params = [body: external_ref]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def set_invoice_item_fulfillment_status(id, sku, status) do
    method = [method: :put]
    url = [url: "/invoices/{id}/items/#{sku}/fulfillment-status"]
    query_params = []
    header_params = []
    body_params = [body: status]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def set_order_notes(id, order_notes) do
    method = [method: :put]
    url = [url: "/invoices/#{id}/order-notes"]
    query_params = []
    header_params = []
    body_params = [body: order_notes]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def set_payment_status(id, request) do
    method = [method: :put]
    url = [url: "/invoices/#{id}/payment-status"]
    query_params = []
    header_params = []
    body_params = [body: request]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def update_billing_info(id, billing_info_request) do
    method = [method: :put]
    url = [url: "/invoices/#{id}/billing-address"]
    query_params = []
    header_params = []
    body_params = [body: billing_info_request]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
