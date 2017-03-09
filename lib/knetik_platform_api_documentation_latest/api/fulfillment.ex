defmodule KnetikPlatformAPIDocumentationLatest.Api.Fulfillment do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Fulfillment.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  def create_fulfillment_type(type) do
    method = [method: :post]
    url = [url: "/store/fulfillment/types"]
    query_params = []
    header_params = []
    body_params = [body: type]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def delete_fulfillment_type(id) do
    method = [method: :delete]
    url = [url: "/store/fulfillment/types/#{id}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_fulfillment_type(id) do
    method = [method: :get]
    url = [url: "/store/fulfillment/types/#{id}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_fulfillment_types(size, page, order) do
    method = [method: :get]
    url = [url: "/store/fulfillment/types"]
    query_params = [query: [{:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def update_fulfillment_type(id, fulfillment_type) do
    method = [method: :put]
    url = [url: "/store/fulfillment/types/#{id}"]
    query_params = []
    header_params = []
    body_params = [body: fulfillment_type]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
