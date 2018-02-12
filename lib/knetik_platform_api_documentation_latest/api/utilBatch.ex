defmodule KnetikPlatformAPIDocumentationLatest.Api.UtilBatch do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.UtilBatch.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Get batch result with token

  Tokens expire in 24 hours. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
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

  @doc """
  Request to run API call given the method, content type, path url, and body of request

  Should the request take longer than one of the alloted timeout parameters, a token will be returned instead, which can be used on the token endpoint in this service. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
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
