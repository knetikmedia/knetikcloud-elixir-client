defmodule KnetikPlatformAPIDocumentationLatest.Api.Notifications do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Notifications.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://jsapi-integration.us-east-1.elasticbeanstalk.com"
  plug Tesla.Middleware.JSON

  @doc """
  Create a notification type

  &lt;b&gt;Permissions Needed:&lt;/b&gt; NOTIFICATIONS_ADMIN
  """
  def create_notification_type(notification_type) do
    method = [method: :post]
    url = [url: "/notifications/types"]
    query_params = []
    header_params = []
    body_params = [body: notification_type]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Delete a notification type

  &lt;b&gt;Permissions Needed:&lt;/b&gt; NOTIFICATIONS_ADMIN
  """
  def delete_notification_type(id) do
    method = [method: :delete]
    url = [url: "/notifications/types/#{id}"]
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
  Get a single notification type

  &lt;b&gt;Permissions Needed:&lt;/b&gt; NOTIFICATIONS_ADMIN
  """
  def get_notification_type(id) do
    method = [method: :get]
    url = [url: "/notifications/types/#{id}"]
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
  List and search notification types

  Get a list of notification type with optional filtering. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; NOTIFICATIONS_ADMIN
  """
  def get_notification_types(size, page, order) do
    method = [method: :get]
    url = [url: "/notifications/types"]
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
  View a user&#39;s notification settings for a type

  &lt;b&gt;Permissions Needed:&lt;/b&gt; NOTIFICATIONS_ADMIN or self
  """
  def get_user_notification_info(type_id, user_id) do
    method = [method: :get]
    url = [url: "/users/{user_id}/notifications/types/#{type_id}"]
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
  View a user&#39;s notification settings

  &lt;b&gt;Permissions Needed:&lt;/b&gt; NOTIFICATIONS_ADMIN or self
  """
  def get_user_notification_info_list(user_id, size, page, order) do
    method = [method: :get]
    url = [url: "/users/#{user_id}/notifications/types"]
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
  Get notifications

  &lt;b&gt;Permissions Needed:&lt;/b&gt; NOTIFICATIONS_ADMIN or self
  """
  def get_user_notifications(id, filter_status, size, page, order) do
    method = [method: :get]
    url = [url: "/users/#{id}/notifications"]
    query_params = [query: [{:"filter_status", filter_status}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Send a notification

  &lt;b&gt;Permissions Needed:&lt;/b&gt; NOTIFICATIONS_ADMIN
  """
  def send_notification(notification) do
    method = [method: :post]
    url = [url: "/notifications"]
    query_params = []
    header_params = []
    body_params = [body: notification]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Set notification status

  &lt;b&gt;Permissions Needed:&lt;/b&gt; NOTIFICATIONS_ADMIN or self
  """
  def set_user_notification_status(user_id, notification_id, notification) do
    method = [method: :put]
    url = [url: "/users/{user_id}/notifications/#{notification_id}/status"]
    query_params = []
    header_params = []
    body_params = [body: notification]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Enable or disable direct notifications for a user

  Allows enabling or disabling messages for a given notification type when sent direct to the user. Notifications can still be retrieved by endpoint. For notifications broadcased to a topic, see the topic service to disable messages for the user there. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; NOTIFICATIONS_ADMIN or self
  """
  def silence_direct_notifications(type_id, user_id, silenced) do
    method = [method: :put]
    url = [url: "/users/{user_id}/notifications/types/#{type_id}/silenced"]
    query_params = []
    header_params = []
    body_params = [body: silenced]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Update a notificationType

  &lt;b&gt;Permissions Needed:&lt;/b&gt; NOTIFICATIONS_ADMIN
  """
  def update_notification_type(id, notification_type) do
    method = [method: :put]
    url = [url: "/notifications/types/#{id}"]
    query_params = []
    header_params = []
    body_params = [body: notification_type]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
