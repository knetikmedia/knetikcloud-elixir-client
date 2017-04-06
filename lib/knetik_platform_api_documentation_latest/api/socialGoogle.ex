defmodule KnetikPlatformAPIDocumentationLatest.Api.SocialGoogle do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.SocialGoogle.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  def link_accounts1(facebook_token) do
    method = [method: :post]
    url = [url: "/social/google/users"]
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
