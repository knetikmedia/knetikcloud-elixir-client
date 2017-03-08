defmodule KnetikPlatformAPIDocumentationLatest.Api.BRERuleEngineVariables do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.BRERuleEngineVariables.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  def get_bre_variable_types() do
    method = [method: :get]
    url = [url: "/bre/variable-types"]
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
