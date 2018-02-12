defmodule KnetikPlatformAPIDocumentationLatest.Api.CampaignsRewards do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.CampaignsRewards.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Create a reward set

  &lt;b&gt;Permissions Needed:&lt;/b&gt; REWARDS_ADMIN
  """
  def create_reward_set(reward_set_resource) do
    method = [method: :post]
    url = [url: "/rewards"]
    query_params = []
    header_params = []
    body_params = [body: reward_set_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Delete a reward set

  &lt;b&gt;Permissions Needed:&lt;/b&gt; REWARDS_ADMIN
  """
  def delete_reward_set(id) do
    method = [method: :delete]
    url = [url: "/rewards/#{id}"]
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
  Get a single reward set

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
  def get_reward_set(id) do
    method = [method: :get]
    url = [url: "/rewards/#{id}"]
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
  List and search reward sets

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
  def get_reward_sets(size, page, order) do
    method = [method: :get]
    url = [url: "/rewards"]
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
  Update a reward set

  &lt;b&gt;Permissions Needed:&lt;/b&gt; REWARDS_ADMIN
  """
  def update_reward_set(id, reward_set_resource) do
    method = [method: :put]
    url = [url: "/rewards/#{id}"]
    query_params = []
    header_params = []
    body_params = [body: reward_set_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
