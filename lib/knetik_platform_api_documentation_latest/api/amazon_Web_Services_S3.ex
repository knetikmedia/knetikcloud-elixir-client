defmodule KnetikPlatformAPIDocumentationLatest.Api.Amazon_Web_Services_S3 do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Amazon_Web_Services_S3.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://jsapi-integration.us-east-1.elasticbeanstalk.com"
  plug Tesla.Middleware.JSON

  @doc """
  Get a temporary signed S3 URL for download

  To give access to files in your own S3 account, you will need to grant KnetikcCloud access to the file by adjusting your bucket policy accordingly. See S3 documentation for details. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; S3_ADMIN
  """
  def get_download_url(bucket, path, expiration) do
    method = [method: :get]
    url = [url: "/amazon/s3/downloadurl"]
    query_params = [query: [{:"bucket", bucket}, {:"path", path}, {:"expiration", expiration}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Get a signed S3 URL for upload

  Requires the file name and file content type (i.e., &#39;video/mpeg&#39;). Make a PUT to the resulting url to upload the file and use the cdn_url to retrieve it after. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; S3_USER or S3_ADMIN
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
