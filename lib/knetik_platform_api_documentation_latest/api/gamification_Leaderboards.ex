defmodule KnetikPlatformAPIDocumentationLatest.Api.Gamification_Leaderboards do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Gamification_Leaderboards.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://jsapi-integration.us-east-1.elasticbeanstalk.com"
  plug Tesla.Middleware.JSON

  @doc """
  Retrieves leaderboard details and paginated entries

  The context type identifies the type of entity (i.e., &#39;activity&#39;) being tracked on the leaderboard. The context ID is the unique ID of the actual entity tracked by the leaderboard. Sorting is based on the fields of LeaderboardEntryResource rather than the returned LeaderboardResource. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
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

  @doc """
  Retrieves a specific user entry with rank

  The context type identifies the type of entity (i.e., &#39;activity&#39;) being tracked on the leaderboard. The context ID is the unique ID of the actual entity tracked by the leaderboard. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
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

  @doc """
  Get a list of available leaderboard strategy names

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
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
