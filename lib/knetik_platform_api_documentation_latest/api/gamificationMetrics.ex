defmodule KnetikPlatformAPIDocumentationLatest.Api.GamificationMetrics do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.GamificationMetrics.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  def add_metric(metric) do
    method = [method: :post]
    url = [url: "/metrics"]
    query_params = []
    header_params = []
    body_params = [body: metric]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
