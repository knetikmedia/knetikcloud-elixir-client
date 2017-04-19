defmodule KnetikPlatformAPIDocumentationLatest.Api.BRERuleEngineEvents do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.BRERuleEngineEvents.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  def send_bre_event(bre_event) do
    method = [method: :post]
    url = [url: "/bre/events"]
    query_params = []
    header_params = []
    body_params = [body: bre_event]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
