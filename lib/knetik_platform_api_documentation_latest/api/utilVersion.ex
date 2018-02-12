defmodule KnetikPlatformAPIDocumentationLatest.Api.UtilVersion do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.UtilVersion.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Get current version info

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
  def get_version() do
    method = [method: :get]
    url = [url: "/version"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
