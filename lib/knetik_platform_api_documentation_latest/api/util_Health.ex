defmodule KnetikPlatformAPIDocumentationLatest.Api.Util_Health do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Util_Health.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://jsapi-integration.us-east-1.elasticbeanstalk.com"
  plug Tesla.Middleware.JSON

  @doc """
  Get health info

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
  def get_health() do
    method = [method: :get]
    url = [url: "/health"]
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
