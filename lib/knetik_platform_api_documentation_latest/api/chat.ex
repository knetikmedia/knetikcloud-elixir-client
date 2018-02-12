defmodule KnetikPlatformAPIDocumentationLatest.Api.Chat do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Chat.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Acknowledge number of messages in a thread

  &lt;b&gt;Permissions Needed:&lt;/b&gt; owner
  """
  def acknowledge_chat_message(id, read_count) do
    method = [method: :put]
    url = [url: "/chat/threads/#{id}/acknowledge"]
    query_params = []
    header_params = []
    body_params = [body: read_count]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Add a user to a chat message blacklist

  &lt;b&gt;Permissions Needed:&lt;/b&gt; CHAT_ADMIN or owner
  """
  def add_chat_message_blacklist(blacklisted_user_id, id) do
    method = [method: :post]
    url = [url: "/chat/users/{id}/blacklist/#{blacklisted_user_id}"]
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
  Delete a message

  &lt;b&gt;Permissions Needed:&lt;/b&gt; CHAT_ADMIN or owner
  """
  def delete_chat_message(id) do
    method = [method: :delete]
    url = [url: "/chat/messages/#{id}"]
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
  Edit your message

  &lt;b&gt;Permissions Needed:&lt;/b&gt; owner
  """
  def edit_chat_message(id, chat_message_resource) do
    method = [method: :put]
    url = [url: "/chat/messages/#{id}"]
    query_params = []
    header_params = []
    body_params = [body: chat_message_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Get a message

  &lt;b&gt;Permissions Needed:&lt;/b&gt; CHAT_ADMIN or owner
  """
  def get_chat_message(id) do
    method = [method: :get]
    url = [url: "/chat/messages/#{id}"]
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
  Get a list of blocked users for chat messaging

  &lt;b&gt;Permissions Needed:&lt;/b&gt; CHAT_ADMIN or owner
  """
  def get_chat_message_blacklist(id) do
    method = [method: :get]
    url = [url: "/chat/users/#{id}/blacklist"]
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
  List your threads

  &lt;b&gt;Permissions Needed:&lt;/b&gt; owner
  """
  def get_chat_threads(size, page, order) do
    method = [method: :get]
    url = [url: "/chat/threads"]
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
  List messages with a user

  &lt;b&gt;Permissions Needed:&lt;/b&gt; owner
  """
  def get_direct_messages(id, size, page, order) do
    method = [method: :get]
    url = [url: "/chat/users/#{id}/messages"]
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
  List messages in a thread

  &lt;b&gt;Permissions Needed:&lt;/b&gt; CHAT_ADMIN or owner
  """
  def get_thread_messages(id, size, page, order) do
    method = [method: :get]
    url = [url: "/chat/threads/#{id}/messages"]
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
  List messages in a topic

  &lt;b&gt;Permissions Needed:&lt;/b&gt; CHAT_ADMIN or owner
  """
  def get_topic_messages(id, size, page, order) do
    method = [method: :get]
    url = [url: "/chat/topics/#{id}/messages"]
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
  Remove a user from a blacklist

  &lt;b&gt;Permissions Needed:&lt;/b&gt; CHAT_ADMIN or owner
  """
  def remove_chat_blacklist(blacklisted_user_id, id) do
    method = [method: :delete]
    url = [url: "/chat/users/{id}/blacklist/#{blacklisted_user_id}"]
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
  Send a message

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
  def send_message(chat_message_resource) do
    method = [method: :post]
    url = [url: "/chat/messages"]
    query_params = []
    header_params = []
    body_params = [body: chat_message_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
