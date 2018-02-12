defmodule KnetikPlatformAPIDocumentationLatest.Api.SocialFacebook do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.SocialFacebook.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Link facebook account

  Links the current user account to a facebook account, using the acccess token from facebook. Can also be used to update the access token after it has expired. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; Non-facebook user token
  """
  def link_accounts(facebook_token) do
    method = [method: :post]
    url = [url: "/social/facebook/users"]
    query_params = []
    header_params = []
    body_params = [body: facebook_token]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
