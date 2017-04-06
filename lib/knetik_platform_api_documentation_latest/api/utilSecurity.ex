defmodule KnetikPlatformAPIDocumentationLatest.Api.UtilSecurity do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.UtilSecurity.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  def get_user_location_log(user_id) do
    method = [method: :get]
    url = [url: "/security/country-log"]
    query_params = [query: [{:"userId", user_id}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

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
