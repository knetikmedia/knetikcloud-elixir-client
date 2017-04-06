defmodule KnetikPlatformAPIDocumentationLatest.Api.AccessToken do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.AccessToken.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  def get_o_auth_token(grant_type, client_id, client_secret, username, password) do
    method = [method: :post]
    url = [url: "/oauth/token"]
    query_params = []
    header_params = []
    body_params = []
    form_params = [body: Enum.map_join([{:"grantType", grant_type}, {:"clientId", client_id}, {:"clientSecret", client_secret}, {:"username", username}, {:"password", password}], "&", &("#{elem(&1, 0)}=#{elem(&1, 1)}"))]
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
