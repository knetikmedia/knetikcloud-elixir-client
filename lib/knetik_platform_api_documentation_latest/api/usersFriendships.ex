defmodule KnetikPlatformAPIDocumentationLatest.Api.UsersFriendships do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.UsersFriendships.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Add a friend

  As a user, either creates or confirm a pending request. As an admin, call this endpoint twice while inverting the IDs to create a confirmed friendship.
  """
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

  @doc """
  Get friends list

  
  """
  def get_friends(user_id, filter_username, filter_user_id, size, page) do
    method = [method: :get]
    url = [url: "/users/#{user_id}/friends"]
    query_params = [query: [{:"filter_username", filter_username}, {:"filter_user_id", filter_user_id}, {:"size", size}, {:"page", page}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Returns the invite token

  This is a unique invite token that allows direct connection to the request user.  Exposing that token presents privacy issues if the token is leaked. Use friend request flow instead if confirmation is required
  """
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

  @doc """
  Get pending invites

  Invites that the specified user received
  """
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

  @doc """
  Redeem friendship token

  Immediately connects the requested user with the user mapped by the provided invite token
  """
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

  @doc """
  Remove or decline a friend

  
  """
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
