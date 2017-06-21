defmodule KnetikPlatformAPIDocumentationLatest.Api.Devices do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Devices.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  def add_device_users(user_resources, id) do
    method = [method: :post]
    url = [url: "/devices/#{id}/users"]
    query_params = []
    header_params = []
    body_params = [body: user_resources]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def create_device(device) do
    method = [method: :post]
    url = [url: "/devices"]
    query_params = []
    header_params = []
    body_params = [body: device]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def delete_device(id) do
    method = [method: :delete]
    url = [url: "/devices/#{id}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def delete_device_user(id, user_id) do
    method = [method: :delete]
    url = [url: "/devices/{id}/users/#{user_id}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def delete_device_users(id, filter_id) do
    method = [method: :delete]
    url = [url: "/devices/#{id}/users"]
    query_params = [query: [{:"filterId", filter_id}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_device(id) do
    method = [method: :get]
    url = [url: "/devices/#{id}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_devices(filter_make, filter_model, size, page, order) do
    method = [method: :get]
    url = [url: "/devices"]
    query_params = [query: [{:"filterMake", filter_make}, {:"filterModel", filter_model}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def update_device(device, id) do
    method = [method: :put]
    url = [url: "/devices/#{id}"]
    query_params = []
    header_params = []
    body_params = [body: device]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
