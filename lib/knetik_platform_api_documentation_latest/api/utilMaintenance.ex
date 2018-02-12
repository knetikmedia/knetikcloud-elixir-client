defmodule KnetikPlatformAPIDocumentationLatest.Api.UtilMaintenance do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.UtilMaintenance.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Delete maintenance info

  &lt;b&gt;Permissions Needed:&lt;/b&gt; MAINTENANCE_ADMIN
  """
  def delete_maintenance() do
    method = [method: :delete]
    url = [url: "/maintenance"]
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
  Get current maintenance info

  Get current maintenance info. 404 if no maintenance. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
  def get_maintenance() do
    method = [method: :get]
    url = [url: "/maintenance"]
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
  Set current maintenance info

  &lt;b&gt;Permissions Needed:&lt;/b&gt; MAINTENANCE_ADMIN
  """
  def set_maintenance(maintenance) do
    method = [method: :post]
    url = [url: "/maintenance"]
    query_params = []
    header_params = []
    body_params = [body: maintenance]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Update current maintenance info

  &lt;b&gt;Permissions Needed:&lt;/b&gt; MAINTENANCE_ADMIN
  """
  def update_maintenance(maintenance) do
    method = [method: :put]
    url = [url: "/maintenance"]
    query_params = []
    header_params = []
    body_params = [body: maintenance]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
