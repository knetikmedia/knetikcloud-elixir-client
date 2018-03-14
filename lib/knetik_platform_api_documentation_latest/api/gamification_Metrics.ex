defmodule KnetikPlatformAPIDocumentationLatest.Api.Gamification_Metrics do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Gamification_Metrics.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://jsapi-integration.us-east-1.elasticbeanstalk.com"
  plug Tesla.Middleware.JSON

  @doc """
  Add a metric

  Post a new score/stat for an activity occurrence without ending the occurrence itself
  """
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
