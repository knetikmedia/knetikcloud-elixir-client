defmodule KnetikPlatformAPIDocumentationLatest.Api.BRERuleEngineEvents do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.BRERuleEngineEvents.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Fire a new event, based on an existing trigger

  Parameters within the event must match names and types from the trigger. Actual rule execution is asynchornous.  Returns request id, which will be used as the event id. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; BRE_RULE_ENGINE_EVENTS_USER
  """
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
