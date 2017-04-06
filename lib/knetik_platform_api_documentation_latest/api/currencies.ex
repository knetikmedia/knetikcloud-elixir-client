defmodule KnetikPlatformAPIDocumentationLatest.Api.Currencies do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Currencies.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

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

  def get_currencies(filter_enabled_currencies, filter_type, size, page, order) do
    method = [method: :get]
    url = [url: "/currencies"]
    query_params = [query: [{:"filterEnabledCurrencies", filter_enabled_currencies}, {:"filterType", filter_type}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

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
