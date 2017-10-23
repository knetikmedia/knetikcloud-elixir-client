defmodule KnetikPlatformAPIDocumentationLatest.Api.Messaging do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Messaging.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Send a raw email to one or more users

  
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

  Sends a raw push notification message to one or more users. User&#39;s without registered mobile device for the application will be skipped.
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

  Sends a raw SMS text message to one or more users. User&#39;s without registered mobile numbers will be skipped.
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

  Sends a templated push notification message to one or more users. User&#39;s without registered mobile device for the application will be skipped.
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

  Sends a templated SMS text message to one or more users. User&#39;s without registered mobile numbers will be skipped.
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
end
