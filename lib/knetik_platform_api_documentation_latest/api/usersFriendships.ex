defmodule KnetikPlatformAPIDocumentationLatest.Api.UsersFriendships do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.UsersFriendships.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  def add_friend(user_id, id) do
    method = [method: :post]
    url = [url: "/users/{user_id}/friends/#{id}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_friends(user_id, size, page) do
    method = [method: :get]
    url = [url: "/users/#{user_id}/friends"]
    query_params = [query: [{:"size", size}, {:"page", page}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_invite_token(user_id) do
    method = [method: :get]
    url = [url: "/users/#{user_id}/invite-token"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_invites(user_id, size, page) do
    method = [method: :get]
    url = [url: "/users/#{user_id}/invites"]
    query_params = [query: [{:"size", size}, {:"page", page}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def redeem_friendship_token(user_id, token) do
    method = [method: :post]
    url = [url: "/users/#{user_id}/friends/tokens"]
    query_params = []
    header_params = []
    body_params = [body: token]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def remove_or_decline_friend(user_id, id) do
    method = [method: :delete]
    url = [url: "/users/{user_id}/friends/#{id}"]
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
