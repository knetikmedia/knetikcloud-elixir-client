defmodule KnetikPlatformAPIDocumentationLatest.Api.TemplatesProperties do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.TemplatesProperties.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  def get_template_property_type(type) do
    method = [method: :get]
    url = [url: "/templates/properties/#{type}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_template_property_types() do
    method = [method: :get]
    url = [url: "/templates/properties"]
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
