defmodule KnetikPlatformAPIDocumentationLatest.Api.Devices do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Devices.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://devsandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Add device users

  
  """
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

  @doc """
  Create a device

  
  """
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

  @doc """
  Create a device template

  Device Templates define a type of device and the properties they have
  """
  def create_device_template(device_template_resource) do
    method = [method: :post]
    url = [url: "/devices/templates"]
    query_params = []
    header_params = []
    body_params = [body: device_template_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Delete a device

  
  """
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

  @doc """
  Delete an device template

  If cascade &#x3D; &#39;detach&#39;, it will force delete the template even if it&#39;s attached to other objects
  """
  def delete_device_template(id, cascade) do
    method = [method: :delete]
    url = [url: "/devices/templates/#{id}"]
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
  Delete a device user

  
  """
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

  @doc """
  Delete all device users

  
  """
  def delete_device_users(id, filter_id) do
    method = [method: :delete]
    url = [url: "/devices/#{id}/users"]
    query_params = [query: [{:"filter_id", filter_id}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Get a single device

  
  """
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

  @doc """
  Get a single device template

  
  """
  def get_device_template(id) do
    method = [method: :get]
    url = [url: "/devices/templates/#{id}"]
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
  List and search device templates

  
  """
  def get_device_templates(size, page, order) do
    method = [method: :get]
    url = [url: "/devices/templates"]
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
  List and search devices

  Get a list of devices with optional filtering
  """
  def get_devices(filter_make, filter_model, filter_os, filter_serial, filter_type, filter_tag, size, page, order) do
    method = [method: :get]
    url = [url: "/devices"]
    query_params = [query: [{:"filter_make", filter_make}, {:"filter_model", filter_model}, {:"filter_os", filter_os}, {:"filter_serial", filter_serial}, {:"filter_type", filter_type}, {:"filter_tag", filter_tag}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Update a device

  
  """
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

  @doc """
  Update an device template

  
  """
  def update_device_template(id, device_template_resource) do
    method = [method: :put]
    url = [url: "/devices/templates/#{id}"]
    query_params = []
    header_params = []
    body_params = [body: device_template_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
