defmodule KnetikPlatformAPIDocumentationLatest.Api.Messaging_Topics do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Messaging_Topics.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://jsapi-integration.us-east-1.elasticbeanstalk.com"
  plug Tesla.Middleware.JSON

  @doc """
  Enable or disable messages for a user

  Useful for opt-out options on a single topic. Consider multiple topics for multiple opt-out options. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TOPICS_ADMIN or self
  """
  def disable_topic_subscriber(id, user_id, disabled) do
    method = [method: :put]
    url = [url: "/messaging/topics/{id}/subscribers/#{user_id}/disabled"]
    query_params = []
    header_params = []
    body_params = [body: disabled]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Get a subscriber to a topic

  &lt;b&gt;Permissions Needed:&lt;/b&gt; TOPICS_ADMIN or self
  """
  def get_topic_subscriber(id, user_id) do
    method = [method: :get]
    url = [url: "/messaging/topics/{id}/subscribers/#{user_id}"]
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
  Get all messaging topics for a given user

  &lt;b&gt;Permissions Needed:&lt;/b&gt; TOPICS_ADMIN or self
  """
  def get_user_topics(id) do
    method = [method: :get]
    url = [url: "/users/#{id}/topics"]
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
