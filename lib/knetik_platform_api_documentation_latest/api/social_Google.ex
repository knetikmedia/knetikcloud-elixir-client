defmodule KnetikPlatformAPIDocumentationLatest.Api.Social_Google do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Social_Google.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://jsapi-integration.us-east-1.elasticbeanstalk.com"
  plug Tesla.Middleware.JSON

  @doc """
  Link google account

  Links the current user account to a google account, using the acccess token from google. Can also be used to update the access token after it has expired. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; Non-google user token
  """
  def link_accounts1(google_token) do
    method = [method: :post]
    url = [url: "/social/google/users"]
    query_params = []
    header_params = []
    body_params = [body: google_token]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
