defmodule KnetikPlatformAPIDocumentationLatest.Api.BRERuleEngineActions do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.BRERuleEngineActions.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  def get_bre_actions(filter_category, filter_name, filter_tags, filter_search) do
    method = [method: :get]
    url = [url: "/bre/actions"]
    query_params = [query: [{:"filterCategory", filter_category}, {:"filterName", filter_name}, {:"filterTags", filter_tags}, {:"filterSearch", filter_search}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
