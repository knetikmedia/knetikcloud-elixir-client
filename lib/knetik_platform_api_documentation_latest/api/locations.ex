defmodule KnetikPlatformAPIDocumentationLatest.Api.Locations do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Locations.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

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
