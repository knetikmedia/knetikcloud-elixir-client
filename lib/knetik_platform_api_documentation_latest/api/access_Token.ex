defmodule KnetikPlatformAPIDocumentationLatest.Api.Access_Token do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Access_Token.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://jsapi-integration.us-east-1.elasticbeanstalk.com"
  plug Tesla.Middleware.JSON

  @doc """
  Get access token

  
  """
  def get_o_auth_token(grant_type, client_id, client_secret, username, password, token, refresh_token) do
    method = [method: :post]
    url = [url: "/oauth/token"]
    query_params = []
    header_params = []
    body_params = []
    form_params = [body: Enum.map_join([{:"grant_type", grant_type}, {:"client_id", client_id}, {:"client_secret", client_secret}, {:"username", username}, {:"password", password}, {:"token", token}, {:"refresh_token", refresh_token}], "&", &("#{elem(&1, 0)}=#{elem(&1, 1)}"))]
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
