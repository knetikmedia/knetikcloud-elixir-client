defmodule KnetikPlatformAPIDocumentationLatest.Api.Locations do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Locations.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Get a list of countries

  
  """
  def get_countries() do
    method = [method: :get]
    url = [url: "/location/countries"]
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
  Get the iso3 code of your country

  Determined by geo ip location
  """
  def get_country_by_geo_location() do
    method = [method: :get]
    url = [url: "/location/geolocation/country"]
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
  Get a list of a country&#39;s states

  
  """
  def get_country_states(country_code_iso3) do
    method = [method: :get]
    url = [url: "/location/countries/#{country_code_iso3}/states"]
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
  Get the currency information of your country

  Determined by geo ip location, currency to country mapping and a fallback setting
  """
  def get_currency_by_geo_location() do
    method = [method: :get]
    url = [url: "/location/geolocation/currency"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
