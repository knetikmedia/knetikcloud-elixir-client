defmodule KnetikPlatformAPIDocumentationLatest.Api.ReportingChallenges do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.ReportingChallenges.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  def get_challenge_event_leaderboard(filter_event, size, page, order) do
    method = [method: :get]
    url = [url: "/reporting/events/leaderboard"]
    query_params = [query: [{:"filterEvent", filter_event}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_challenge_event_participants(filter_event, size, page, order) do
    method = [method: :get]
    url = [url: "/reporting/events/participants"]
    query_params = [query: [{:"filterEvent", filter_event}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
