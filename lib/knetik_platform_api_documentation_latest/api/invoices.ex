defmodule KnetikPlatformAPIDocumentationLatest.Api.Invoices do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Invoices.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Create an invoice

  Create an invoice(s) by providing a cart GUID. Note that there may be multiple invoices created, one per vendor.
  """
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

  @doc """
  Lists available fulfillment statuses

  
  """
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

  @doc """
  Retrieve an invoice

  
  """
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

  @doc """
  List invoice logs

  
  """
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

  @doc """
  Retrieve invoices

  Without INVOICES_ADMIN permission the results are automatically filtered for only the logged in user&#39;s invoices. It is recomended however that filter_user be added to avoid issues for admin users accidentally getting additional invoices.
  """
  def get_invoices(filter_user, filter_email, filter_fulfillment_status, filter_payment_status, filter_item_name, filter_external_ref, filter_created_date, filter_vendor_ids, filter_currency, filter_shipping_state_name, filter_shipping_country_name, filter_shipping, filter_vendor_name, filter_sku, size, page, order) do
    method = [method: :get]
    url = [url: "/invoices"]
    query_params = [query: [{:"filter_user", filter_user}, {:"filter_email", filter_email}, {:"filter_fulfillment_status", filter_fulfillment_status}, {:"filter_payment_status", filter_payment_status}, {:"filter_item_name", filter_item_name}, {:"filter_external_ref", filter_external_ref}, {:"filter_created_date", filter_created_date}, {:"filter_vendor_ids", filter_vendor_ids}, {:"filter_currency", filter_currency}, {:"filter_shipping_state_name", filter_shipping_state_name}, {:"filter_shipping_country_name", filter_shipping_country_name}, {:"filter_shipping", filter_shipping}, {:"filter_vendor_name", filter_vendor_name}, {:"filter_sku", filter_sku}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Lists available payment statuses

  
  """
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

  @doc """
  Pay an invoice using a saved payment method

  
  """
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

  @doc """
  Set the fulfillment status of a bundled invoice item

  This allows external fulfillment systems to report success or failure. Fulfillment status changes are restricted by a specific flow determining which status can lead to which.
  """
  def set_bundled_invoice_item_fulfillment_status(id, bundle_sku, sku, status) do
    method = [method: :put]
    url = [url: "/invoices/{id}/items/{bundleSku}/bundled-skus/#{sku}/fulfillment-status"]
    query_params = []
    header_params = []
    body_params = [body: status]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Set the external reference of an invoice

  
  """
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

  @doc """
  Set the fulfillment status of an invoice item

  This allows external fulfillment systems to report success or failure. Fulfillment status changes are restricted by a specific flow determining which status can lead to which.
  """
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

  @doc """
  Set the order notes of an invoice

  
  """
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

  @doc """
  Set the payment status of an invoice

  This may trigger fulfillment if setting the status to &#39;paid&#39;. This is mainly intended to support external payment systems that cannot be incorporated into the payment method system. Payment status changes are restricted by a specific flow determining which status can lead to which.
  """
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

  @doc """
  Set or update billing info

  
  """
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
