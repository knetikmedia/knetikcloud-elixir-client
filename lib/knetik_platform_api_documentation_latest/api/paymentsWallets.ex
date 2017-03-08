defmodule KnetikPlatformAPIDocumentationLatest.Api.PaymentsWallets do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.PaymentsWallets.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  def get_user_wallet(user_id, currency_code) do
    method = [method: :get]
    url = [url: "/users/{user_id}/wallets/#{currency_code}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_user_wallet_transactions(user_id, currency_code, filter_type, filter_max_date, filter_min_date, filter_sign, size, page, order) do
    method = [method: :get]
    url = [url: "/users/{user_id}/wallets/#{currency_code}/transactions"]
    query_params = [query: [{:"filterType", filter_type}, {:"filterMaxDate", filter_max_date}, {:"filterMinDate", filter_min_date}, {:"filterSign", filter_sign}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_user_wallets(user_id) do
    method = [method: :get]
    url = [url: "/users/#{user_id}/wallets"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_wallet_balances() do
    method = [method: :get]
    url = [url: "/wallets/totals"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_wallet_transactions(filter_invoice, filter_type, filter_date, filter_sign, filter_user_id, filter_username, filter_details, filter_currency_code, size, page, order) do
    method = [method: :get]
    url = [url: "/wallets/transactions"]
    query_params = [query: [{:"filterInvoice", filter_invoice}, {:"filterType", filter_type}, {:"filterDate", filter_date}, {:"filterSign", filter_sign}, {:"filterUserId", filter_user_id}, {:"filterUsername", filter_username}, {:"filterDetails", filter_details}, {:"filterCurrencyCode", filter_currency_code}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_wallets(size, page, order) do
    method = [method: :get]
    url = [url: "/wallets"]
    query_params = [query: [{:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def update_wallet_balance(user_id, currency_code, request) do
    method = [method: :put]
    url = [url: "/users/{user_id}/wallets/#{currency_code}/balance"]
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
