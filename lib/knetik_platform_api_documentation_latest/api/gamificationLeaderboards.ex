defmodule KnetikPlatformAPIDocumentationLatest.Api.GamificationLeaderboards do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.GamificationLeaderboards.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  def get_leaderboard(context_type, context_id, size, page, order) do
    method = [method: :get]
    url = [url: "/leaderboards/{context_type}/#{context_id}"]
    query_params = [query: [{:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_leaderboard_rank(context_type, context_id, id) do
    method = [method: :get]
    url = [url: "/leaderboards/{context_type}/{context_id}/users/#{id}/rank"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_leaderboard_strategies() do
    method = [method: :get]
    url = [url: "/leaderboards/strategies"]
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
