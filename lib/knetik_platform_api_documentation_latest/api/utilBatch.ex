defmodule KnetikPlatformAPIDocumentationLatest.Api.UtilBatch do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.UtilBatch.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  def get_batch(token) do
    method = [method: :get]
    url = [url: "/batch/#{token}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def send_batch(batch) do
    method = [method: :post]
    url = [url: "/batch"]
    query_params = []
    header_params = []
    body_params = [body: batch]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
