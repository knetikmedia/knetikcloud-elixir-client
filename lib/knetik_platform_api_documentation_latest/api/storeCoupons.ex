defmodule KnetikPlatformAPIDocumentationLatest.Api.StoreCoupons do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.StoreCoupons.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

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
