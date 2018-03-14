defmodule KnetikPlatformAPIDocumentationLatest.Api.Payments_Transactions do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Payments_Transactions.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://jsapi-integration.us-east-1.elasticbeanstalk.com"
  plug Tesla.Middleware.JSON

  @doc """
  Get the details for a single transaction

  &lt;b&gt;Permissions Needed:&lt;/b&gt; TRANSACTIONS_ADMIN or owner
  """
  def get_transaction(id) do
    method = [method: :get]
    url = [url: "/transactions/#{id}"]
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
  List and search transactions

  &lt;b&gt;Permissions Needed:&lt;/b&gt; TRANSACTIONS_ADMIN or owner
  """
  def get_transactions(filter_invoice, size, page, order) do
    method = [method: :get]
    url = [url: "/transactions"]
    query_params = [query: [{:"filter_invoice", filter_invoice}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Refund a payment transaction, in full or in part

  Will not allow for refunding more than the full amount even with multiple partial refunds. Money is refunded to the payment method used to make the original payment. Payment method must support refunds. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; PAYMENTS_ADMIN
  """
  def refund_transaction(id, request) do
    method = [method: :post]
    url = [url: "/transactions/#{id}/refunds"]
    query_params = []
    header_params = []
    body_params = [body: request]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
