defmodule KnetikPlatformAPIDocumentationLatest.Api.UtilMaintenance do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.UtilMaintenance.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://devsandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Delete maintenance info

  
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

  Get current maintenance info. 404 if no maintenance.
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
