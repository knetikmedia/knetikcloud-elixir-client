defmodule KnetikPlatformAPIDocumentationLatest.Api.AmazonWebServicesS3 do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.AmazonWebServicesS3.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Get a signed S3 URL

  Requires the file name and file content type (i.e., &#39;video/mpeg&#39;)
  """
  def get_signed_s3_url(filename, content_type) do
    method = [method: :get]
    url = [url: "/amazon/s3/signedposturl"]
    query_params = [query: [{:"filename", filename}, {:"content_type", content_type}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
