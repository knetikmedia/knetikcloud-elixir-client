defmodule KnetikPlatformAPIDocumentationLatest.Api.Fulfillment do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Fulfillment.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Create a fulfillment type

  &lt;b&gt;Permissions Needed:&lt;/b&gt; FULFILLMENT_ADMIN
  """
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

  @doc """
  Delete a fulfillment type

  &lt;b&gt;Permissions Needed:&lt;/b&gt; FULFILLMENT_ADMIN
  """
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

  @doc """
  Get a single fulfillment type

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
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

  @doc """
  List and search fulfillment types

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
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

  @doc """
  Update a fulfillment type

  &lt;b&gt;Permissions Needed:&lt;/b&gt; FULFILLMENT_ADMIN
  """
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
