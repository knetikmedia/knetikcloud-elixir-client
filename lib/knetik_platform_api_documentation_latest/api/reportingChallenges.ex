defmodule KnetikPlatformAPIDocumentationLatest.Api.ReportingChallenges do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.ReportingChallenges.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://devsandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Retrieve a challenge event leaderboard details

  Lists all leaderboard entries with additional user details
  """
  def get_challenge_event_leaderboard(filter_event, size, page, order) do
    method = [method: :get]
    url = [url: "/reporting/events/leaderboard"]
    query_params = [query: [{:"filter_event", filter_event}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Retrieve a challenge event participant details

  Lists all user submitted scores sorted by value, including those that do not apear in the leaderboard due to value or aggregation
  """
  def get_challenge_event_participants(filter_event, size, page, order) do
    method = [method: :get]
    url = [url: "/reporting/events/participants"]
    query_params = [query: [{:"filter_event", filter_event}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
