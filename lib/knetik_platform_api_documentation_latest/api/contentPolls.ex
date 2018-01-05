defmodule KnetikPlatformAPIDocumentationLatest.Api.ContentPolls do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.ContentPolls.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://devsandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Add your vote to a poll

  
  """
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

  @doc """
  Create a new poll

  Polls are blobs of text with titles, a category and assets. Formatting and display of the text is in the hands of the front end.
  """
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

  @doc """
  Create a poll template

  Poll templates define a type of poll and the properties they have
  """
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

  @doc """
  Delete an existing poll

  
  """
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

  @doc """
  Delete a poll template

  If cascade &#x3D; &#39;detach&#39;, it will force delete the template even if it&#39;s attached to other objects
  """
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

  @doc """
  Get a single poll

  
  """
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

  @doc """
  Get poll answer

  
  """
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

  @doc """
  Get a single poll template

  
  """
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

  @doc """
  List and search poll templates

  
  """
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

  @doc """
  List and search polls

  Get a list of polls with optional filtering. Assets will not be filled in on the resources returned. Use &#39;Get a single poll&#39; to retrieve the full resource with assets for a given item as needed.
  """
  def get_polls(filter_category, filter_tagset, filter_text, size, page, order) do
    method = [method: :get]
    url = [url: "/media/polls"]
    query_params = [query: [{:"filter_category", filter_category}, {:"filter_tagset", filter_tagset}, {:"filter_text", filter_text}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Update an existing poll

  
  """
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

  @doc """
  Update a poll template

  
  """
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
