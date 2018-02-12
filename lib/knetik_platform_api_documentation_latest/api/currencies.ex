defmodule KnetikPlatformAPIDocumentationLatest.Api.Currencies do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Currencies.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Create a currency

  &lt;b&gt;Permissions Needed:&lt;/b&gt; CURRENCIES_ADMIN
  """
  def create_currency(currency) do
    method = [method: :post]
    url = [url: "/currencies"]
    query_params = []
    header_params = []
    body_params = [body: currency]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Delete a currency

  &lt;b&gt;Permissions Needed:&lt;/b&gt; CURRENCIES_ADMIN
  """
  def delete_currency(code) do
    method = [method: :delete]
    url = [url: "/currencies/#{code}"]
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
  List and search currencies

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
  def get_currencies(filter_default, filter_enabled_currencies, filter_type, size, page, order) do
    method = [method: :get]
    url = [url: "/currencies"]
    query_params = [query: [{:"filter_default", filter_default}, {:"filter_enabled_currencies", filter_enabled_currencies}, {:"filter_type", filter_type}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Get a single currency

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
  def get_currency(code) do
    method = [method: :get]
    url = [url: "/currencies/#{code}"]
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
  Update a currency

  &lt;b&gt;Permissions Needed:&lt;/b&gt; CURRENCIES_ADMIN
  """
  def update_currency(code, currency) do
    method = [method: :put]
    url = [url: "/currencies/#{code}"]
    query_params = []
    header_params = []
    body_params = [body: currency]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
