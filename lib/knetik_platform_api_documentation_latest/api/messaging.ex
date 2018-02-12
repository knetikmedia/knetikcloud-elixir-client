defmodule KnetikPlatformAPIDocumentationLatest.Api.Messaging do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Messaging.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Compile a message template

  Processes a set of input data against the template and returnes the compiled result. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; MESSAGING_ADMIN
  """
  def compile_message_template(request) do
    method = [method: :post]
    url = [url: "/messaging/templates/compilations"]
    query_params = []
    header_params = []
    body_params = [body: request]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Create a message template

  &lt;b&gt;Permissions Needed:&lt;/b&gt; MESSAGING_ADMIN
  """
  def create_message_template(message_template) do
    method = [method: :post]
    url = [url: "/messaging/templates"]
    query_params = []
    header_params = []
    body_params = [body: message_template]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Delete an existing message template

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ARTICLES_ADMIN
  """
  def delete_message_template(id) do
    method = [method: :delete]
    url = [url: "/messaging/templates/#{id}"]
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
  Get a single message template

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ARTICLES_ADMIN
  """
  def get_message_template(id) do
    method = [method: :get]
    url = [url: "/messaging/templates/#{id}"]
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
  List and search message templates

  Get a list of message templates with optional filtering. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; ARTICLES_ADMIN
  """
  def get_message_templates(filter_tagset, filter_tag_intersection, filter_tag_exclusion, size, page, order) do
    method = [method: :get]
    url = [url: "/messaging/templates"]
    query_params = [query: [{:"filter_tagset", filter_tagset}, {:"filter_tag_intersection", filter_tag_intersection}, {:"filter_tag_exclusion", filter_tag_exclusion}, {:"size", size}, {:"page", page}, {:"order", order}]]
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

  Sends a message with one or more formats to one or more users. Fill in any message formats desired (email, sms, websockets) and each user will recieve all valid formats. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; MESSAGING_ADMIN
  """
  def send_message1(message_resource) do
    method = [method: :post]
    url = [url: "/messaging/message"]
    query_params = []
    header_params = []
    body_params = [body: message_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Send a raw email to one or more users

  &lt;b&gt;Permissions Needed:&lt;/b&gt; MESSAGING_ADMIN
  """
  def send_raw_email(raw_email_resource) do
    method = [method: :post]
    url = [url: "/messaging/raw-email"]
    query_params = []
    header_params = []
    body_params = [body: raw_email_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Send a raw push notification

  Sends a raw push notification message to one or more users. User&#39;s without registered mobile device for the application will be skipped. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; MESSAGING_ADMIN
  """
  def send_raw_push(raw_push_resource) do
    method = [method: :post]
    url = [url: "/messaging/raw-push"]
    query_params = []
    header_params = []
    body_params = [body: raw_push_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Send a raw SMS

  Sends a raw SMS text message to one or more users. User&#39;s without registered mobile numbers will be skipped. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; MESSAGING_ADMIN
  """
  def send_raw_sms(raw_sms_resource) do
    method = [method: :post]
    url = [url: "/messaging/raw-sms"]
    query_params = []
    header_params = []
    body_params = [body: raw_sms_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Send a templated email to one or more users

  &lt;b&gt;Permissions Needed:&lt;/b&gt; MESSAGING_ADMIN
  """
  def send_templated_email(message_resource) do
    method = [method: :post]
    url = [url: "/messaging/templated-email"]
    query_params = []
    header_params = []
    body_params = [body: message_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Send a templated push notification

  Sends a templated push notification message to one or more users. User&#39;s without registered mobile device for the application will be skipped. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; MESSAGING_ADMIN
  """
  def send_templated_push(template_push_resource) do
    method = [method: :post]
    url = [url: "/messaging/templated-push"]
    query_params = []
    header_params = []
    body_params = [body: template_push_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Send a new templated SMS

  Sends a templated SMS text message to one or more users. User&#39;s without registered mobile numbers will be skipped. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; MESSAGING_ADMIN
  """
  def send_templated_sms(template_sms_resource) do
    method = [method: :post]
    url = [url: "/messaging/templated-sms"]
    query_params = []
    header_params = []
    body_params = [body: template_sms_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Send a websocket message

  Sends a websocket message to one or more users. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; MESSAGING_ADMIN
  """
  def send_websocket(websocket_resource) do
    method = [method: :post]
    url = [url: "/messaging/websocket-message"]
    query_params = []
    header_params = []
    body_params = [body: websocket_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Update an existing message template

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ARTICLES_ADMIN
  """
  def update_message_template(id, message_template_resource) do
    method = [method: :put]
    url = [url: "/messaging/templates/#{id}"]
    query_params = []
    header_params = []
    body_params = [body: message_template_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
