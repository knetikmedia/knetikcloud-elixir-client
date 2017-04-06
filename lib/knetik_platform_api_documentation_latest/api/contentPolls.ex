defmodule KnetikPlatformAPIDocumentationLatest.Api.ContentPolls do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.ContentPolls.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  def answer_poll(id, answer_key) do
    method = [method: :post]
    url = [url: "/media/polls/#{id}/response"]
    query_params = []
    header_params = []
    body_params = [body: answer_key]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def create_poll(poll_resource) do
    method = [method: :post]
    url = [url: "/media/polls"]
    query_params = []
    header_params = []
    body_params = [body: poll_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def create_poll_template(poll_template_resource) do
    method = [method: :post]
    url = [url: "/media/polls/templates"]
    query_params = []
    header_params = []
    body_params = [body: poll_template_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def delete_poll(id) do
    method = [method: :delete]
    url = [url: "/media/polls/#{id}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def delete_poll_template(id, cascade) do
    method = [method: :delete]
    url = [url: "/media/polls/templates/#{id}"]
    query_params = [query: [{:"cascade", cascade}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_poll(id) do
    method = [method: :get]
    url = [url: "/media/polls/#{id}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_poll_answer(id) do
    method = [method: :get]
    url = [url: "/media/polls/#{id}/response"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_poll_template(id) do
    method = [method: :get]
    url = [url: "/media/polls/templates/#{id}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_poll_templates(size, page, order) do
    method = [method: :get]
    url = [url: "/media/polls/templates"]
    query_params = [query: [{:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_polls(filter_category, filter_tagset, filter_text, size, page, order) do
    method = [method: :get]
    url = [url: "/media/polls"]
    query_params = [query: [{:"filterCategory", filter_category}, {:"filterTagset", filter_tagset}, {:"filterText", filter_text}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def update_poll(id, poll_resource) do
    method = [method: :put]
    url = [url: "/media/polls/#{id}"]
    query_params = []
    header_params = []
    body_params = [body: poll_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def update_poll_template(id, poll_template_resource) do
    method = [method: :put]
    url = [url: "/media/polls/templates/#{id}"]
    query_params = []
    header_params = []
    body_params = [body: poll_template_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
