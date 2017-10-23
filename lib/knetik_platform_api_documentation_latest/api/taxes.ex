defmodule KnetikPlatformAPIDocumentationLatest.Api.Taxes do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Taxes.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Create a country tax

  
  """
  def create_country_tax(tax_resource) do
    method = [method: :post]
    url = [url: "/tax/countries"]
    query_params = []
    header_params = []
    body_params = [body: tax_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Create a state tax

  
  """
  def create_state_tax(country_code_iso3, tax_resource) do
    method = [method: :post]
    url = [url: "/tax/countries/#{country_code_iso3}/states"]
    query_params = []
    header_params = []
    body_params = [body: tax_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Delete an existing tax

  
  """
  def delete_country_tax(country_code_iso3) do
    method = [method: :delete]
    url = [url: "/tax/countries/#{country_code_iso3}"]
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
  Delete an existing state tax

  
  """
  def delete_state_tax(country_code_iso3, state_code) do
    method = [method: :delete]
    url = [url: "/tax/countries/{country_code_iso3}/states/#{state_code}"]
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
  Get a single tax

  
  """
  def get_country_tax(country_code_iso3) do
    method = [method: :get]
    url = [url: "/tax/countries/#{country_code_iso3}"]
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
  List and search taxes

  Get a list of taxes
  """
  def get_country_taxes(size, page, order) do
    method = [method: :get]
    url = [url: "/tax/countries"]
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
  Get a single state tax

  
  """
  def get_state_tax(country_code_iso3, state_code) do
    method = [method: :get]
    url = [url: "/tax/countries/{country_code_iso3}/states/#{state_code}"]
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
  List and search taxes across all countries

  Get a list of taxes
  """
  def get_state_taxes_for_countries(size, page, order) do
    method = [method: :get]
    url = [url: "/tax/states"]
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
  List and search taxes within a country

  Get a list of taxes
  """
  def get_state_taxes_for_country(country_code_iso3, size, page, order) do
    method = [method: :get]
    url = [url: "/tax/countries/#{country_code_iso3}/states"]
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
  Create or update a tax

  
  """
  def update_country_tax(country_code_iso3, tax_resource) do
    method = [method: :put]
    url = [url: "/tax/countries/#{country_code_iso3}"]
    query_params = []
    header_params = []
    body_params = [body: tax_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Create or update a state tax

  
  """
  def update_state_tax(country_code_iso3, state_code, tax_resource) do
    method = [method: :put]
    url = [url: "/tax/countries/{country_code_iso3}/states/#{state_code}"]
    query_params = []
    header_params = []
    body_params = [body: tax_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
