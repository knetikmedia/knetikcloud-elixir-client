defmodule KnetikPlatformAPIDocumentationLatest.Api.StoreCoupons do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.StoreCoupons.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://devsandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Create a coupon item

  SKUs have to be unique in the entire store.
  """
  def create_coupon_item(cascade, coupon_item) do
    method = [method: :post]
    url = [url: "/store/coupons"]
    query_params = [query: [{:"cascade", cascade}]]
    header_params = []
    body_params = [body: coupon_item]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Create a coupon template

  Coupon Templates define a type of coupon and the properties they have.
  """
  def create_coupon_template(coupon_template_resource) do
    method = [method: :post]
    url = [url: "/store/coupons/templates"]
    query_params = []
    header_params = []
    body_params = [body: coupon_template_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Delete a coupon item

  
  """
  def delete_coupon_item(id) do
    method = [method: :delete]
    url = [url: "/store/coupons/#{id}"]
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
  Delete a coupon template

  
  """
  def delete_coupon_template(id, cascade) do
    method = [method: :delete]
    url = [url: "/store/coupons/templates/#{id}"]
    query_params = [query: [{:"cascade", cascade}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Get a single coupon item

  
  """
  def get_coupon_item(id) do
    method = [method: :get]
    url = [url: "/store/coupons/#{id}"]
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
  Get a coupon by sku

  
  """
  def get_coupon_item_by_sku(sku) do
    method = [method: :get]
    url = [url: "/store/coupons/skus/#{sku}"]
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
  Get a single coupon template

  Coupon Templates define a type of coupon and the properties they have.
  """
  def get_coupon_template(id) do
    method = [method: :get]
    url = [url: "/store/coupons/templates/#{id}"]
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
  List and search coupon templates

  
  """
  def get_coupon_templates(size, page, order) do
    method = [method: :get]
    url = [url: "/store/coupons/templates"]
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
  Update a coupon item

  
  """
  def update_coupon_item(id, cascade, coupon_item) do
    method = [method: :put]
    url = [url: "/store/coupons/#{id}"]
    query_params = [query: [{:"cascade", cascade}]]
    header_params = []
    body_params = [body: coupon_item]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Update a coupon template

  
  """
  def update_coupon_template(id, coupon_template_resource) do
    method = [method: :put]
    url = [url: "/store/coupons/templates/#{id}"]
    query_params = []
    header_params = []
    body_params = [body: coupon_template_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
