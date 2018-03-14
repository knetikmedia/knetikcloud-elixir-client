defmodule KnetikPlatformAPIDocumentationLatest.Api.Util_Security do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Util_Security.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://jsapi-integration.us-east-1.elasticbeanstalk.com"
  plug Tesla.Middleware.JSON

  @doc """
  Returns the authentication log for a user

  A log entry is recorded everytime a user requests a new token. Standard pagination available. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; SECURITY_ADMIN
  """
  def get_user_location_log(user_id, size, page, order) do
    method = [method: :get]
    url = [url: "/security/country-log"]
    query_params = [query: [{:"user_id", user_id}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Returns the authentication token details. Use /users endpoint for detailed user&#39;s info

  &lt;b&gt;Permissions Needed:&lt;/b&gt; SECURITY_ADMIN
  """
  def get_user_token_details() do
    method = [method: :get]
    url = [url: "/me"]
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
