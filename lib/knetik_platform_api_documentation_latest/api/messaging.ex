defmodule KnetikPlatformAPIDocumentationLatest.Api.Messaging do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Messaging.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

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
