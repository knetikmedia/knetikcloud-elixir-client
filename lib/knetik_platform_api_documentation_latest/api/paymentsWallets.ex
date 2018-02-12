defmodule KnetikPlatformAPIDocumentationLatest.Api.PaymentsWallets do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.PaymentsWallets.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Returns the user&#39;s wallet for the given currency code

  &lt;b&gt;Permissions Needed:&lt;/b&gt; WALLETS_ADMIN or owner
  """
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

  @doc """
  Retrieve a user&#39;s wallet transactions

  &lt;b&gt;Permissions Needed:&lt;/b&gt; WALLETS_ADMIN or owner
  """
  def get_user_wallet_transactions(user_id, currency_code, filter_type, filter_max_date, filter_min_date, filter_sign, size, page, order) do
    method = [method: :get]
    url = [url: "/users/{user_id}/wallets/#{currency_code}/transactions"]
    query_params = [query: [{:"filter_type", filter_type}, {:"filter_max_date", filter_max_date}, {:"filter_min_date", filter_min_date}, {:"filter_sign", filter_sign}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  List all of a user&#39;s wallets

  &lt;b&gt;Permissions Needed:&lt;/b&gt; WALLETS_ADMIN or owner
  """
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

  @doc """
  Retrieves a summation of wallet balances by currency code

  &lt;b&gt;Permissions Needed:&lt;/b&gt; WALLETS_ADMIN
  """
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

  @doc """
  Retrieve wallet transactions across the system

  &lt;b&gt;Permissions Needed:&lt;/b&gt; WALLETS_ADMIN
  """
  def get_wallet_transactions(filter_invoice, filter_type, filter_date, filter_sign, filter_user_id, filter_username, filter_details, filter_currency_code, size, page, order) do
    method = [method: :get]
    url = [url: "/wallets/transactions"]
    query_params = [query: [{:"filter_invoice", filter_invoice}, {:"filter_type", filter_type}, {:"filter_date", filter_date}, {:"filter_sign", filter_sign}, {:"filter_user_id", filter_user_id}, {:"filter_username", filter_username}, {:"filter_details", filter_details}, {:"filter_currency_code", filter_currency_code}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Retrieve a list of wallets across the system

  &lt;b&gt;Permissions Needed:&lt;/b&gt; WALLETS_ADMIN
  """
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

  @doc """
  Updates the balance for a user&#39;s wallet

  &lt;b&gt;Permissions Needed:&lt;/b&gt; WALLETS_ADMIN
  """
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
