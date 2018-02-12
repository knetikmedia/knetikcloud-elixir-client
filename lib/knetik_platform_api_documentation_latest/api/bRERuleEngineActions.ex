defmodule KnetikPlatformAPIDocumentationLatest.Api.BRERuleEngineActions do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.BRERuleEngineActions.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Get a list of available actions

  &lt;b&gt;Permissions Needed:&lt;/b&gt; BRE_RULE_ENGINE_ACTIONS_USER
  """
  def get_bre_actions(filter_category, filter_name, filter_tags, filter_search) do
    method = [method: :get]
    url = [url: "/bre/actions"]
    query_params = [query: [{:"filter_category", filter_category}, {:"filter_name", filter_name}, {:"filter_tags", filter_tags}, {:"filter_search", filter_search}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
