defmodule KnetikPlatformAPIDocumentationLatest.Api.GamificationTrivia do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.GamificationTrivia.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://devsandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Add an answer to a question

  
  """
  def add_question_answers(question_id, answer) do
    method = [method: :post]
    url = [url: "/trivia/questions/#{question_id}/answers"]
    query_params = []
    header_params = []
    body_params = [body: answer]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Add a tag to a question

  
  """
  def add_question_tag(id, tag) do
    method = [method: :post]
    url = [url: "/trivia/questions/#{id}/tags"]
    query_params = []
    header_params = []
    body_params = [body: tag]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Add a tag to a batch of questions

  All questions that dont&#39;t have the tag and match filters will have it added. The returned number is the number of questions updated.
  """
  def add_tag_to_questions_batch(tag, filter_search, filter_idset, filter_category, filter_tag, filter_tagset, filter_type, filter_published, filter_import_id) do
    method = [method: :post]
    url = [url: "/trivia/questions/tags"]
    query_params = [query: [{:"filter_search", filter_search}, {:"filter_idset", filter_idset}, {:"filter_category", filter_category}, {:"filter_tag", filter_tag}, {:"filter_tagset", filter_tagset}, {:"filter_type", filter_type}, {:"filter_published", filter_published}, {:"filter_import_id", filter_import_id}]]
    header_params = []
    body_params = [body: tag]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Create an import job

  Set up a job to import a set of trivia questions from a cvs file at a remote url. the file will be validated asynchronously but will not be processed until started manually with the process endpoint.
  """
  def create_import_job(request) do
    method = [method: :post]
    url = [url: "/trivia/import"]
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
  Create a question

  
  """
  def create_question(question) do
    method = [method: :post]
    url = [url: "/trivia/questions"]
    query_params = []
    header_params = []
    body_params = [body: question]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Create a question template

  Question templates define a type of question and the properties they have
  """
  def create_question_template(question_template_resource) do
    method = [method: :post]
    url = [url: "/trivia/questions/templates"]
    query_params = []
    header_params = []
    body_params = [body: question_template_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Delete an import job

  Also deletes all questions that were imported by it
  """
  def delete_import_job(id) do
    method = [method: :delete]
    url = [url: "/trivia/import/#{id}"]
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
  Delete a question

  
  """
  def delete_question(id) do
    method = [method: :delete]
    url = [url: "/trivia/questions/#{id}"]
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
  Remove an answer from a question

  
  """
  def delete_question_answers(question_id, id) do
    method = [method: :delete]
    url = [url: "/trivia/questions/{question_id}/answers/#{id}"]
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
  Delete a question template

  If cascade &#x3D; &#39;detach&#39;, it will force delete the template even if it&#39;s attached to other objects
  """
  def delete_question_template(id, cascade) do
    method = [method: :delete]
    url = [url: "/trivia/questions/templates/#{id}"]
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
  Get an import job

  
  """
  def get_import_job(id) do
    method = [method: :get]
    url = [url: "/trivia/import/#{id}"]
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
  Get a list of import job

  
  """
  def get_import_jobs(filter_vendor, filter_category, filter_name, filter_status, size, page, order) do
    method = [method: :get]
    url = [url: "/trivia/import"]
    query_params = [query: [{:"filter_vendor", filter_vendor}, {:"filter_category", filter_category}, {:"filter_name", filter_name}, {:"filter_status", filter_status}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Get a single question

  
  """
  def get_question(id) do
    method = [method: :get]
    url = [url: "/trivia/questions/#{id}"]
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
  Get an answer for a question

  
  """
  def get_question_answer(question_id, id) do
    method = [method: :get]
    url = [url: "/trivia/questions/{question_id}/answers/#{id}"]
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
  List the answers available for a question

  
  """
  def get_question_answers(question_id) do
    method = [method: :get]
    url = [url: "/trivia/questions/#{question_id}/answers"]
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
  List question deltas in ascending order of updated date

  The &#39;since&#39; parameter is important to avoid getting a full list of all questions. Implementors should make sure they pass the updated date of the last resource loaded, not the date of the last request, in order to avoid gaps
  """
  def get_question_deltas(since) do
    method = [method: :get]
    url = [url: "/trivia/questions/delta"]
    query_params = [query: [{:"since", since}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  List the tags for a question

  
  """
  def get_question_tags(id) do
    method = [method: :get]
    url = [url: "/trivia/questions/#{id}/tags"]
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
  Get a single question template

  
  """
  def get_question_template(id) do
    method = [method: :get]
    url = [url: "/trivia/questions/templates/#{id}"]
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
  List and search question templates

  
  """
  def get_question_templates(size, page, order) do
    method = [method: :get]
    url = [url: "/trivia/questions/templates"]
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
  List and search questions

  
  """
  def get_questions(size, page, order, filter_search, filter_idset, filter_category, filter_tagset, filter_tag, filter_type, filter_published, filter_import_id) do
    method = [method: :get]
    url = [url: "/trivia/questions"]
    query_params = [query: [{:"size", size}, {:"page", page}, {:"order", order}, {:"filter_search", filter_search}, {:"filter_idset", filter_idset}, {:"filter_category", filter_category}, {:"filter_tagset", filter_tagset}, {:"filter_tag", filter_tag}, {:"filter_type", filter_type}, {:"filter_published", filter_published}, {:"filter_import_id", filter_import_id}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Count questions based on filters

  This is also provided by the list endpoint so you don&#39;t need to call this for pagination purposes
  """
  def get_questions_count(filter_search, filter_idset, filter_category, filter_tag, filter_tagset, filter_type, filter_published) do
    method = [method: :get]
    url = [url: "/trivia/questions/count"]
    query_params = [query: [{:"filter_search", filter_search}, {:"filter_idset", filter_idset}, {:"filter_category", filter_category}, {:"filter_tag", filter_tag}, {:"filter_tagset", filter_tagset}, {:"filter_type", filter_type}, {:"filter_published", filter_published}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Start processing an import job

  Will process the CSV file and add new questions asynchronously. The status of the job must be &#39;VALID&#39;.
  """
  def process_import_job(id, publish_now) do
    method = [method: :post]
    url = [url: "/trivia/import/#{id}/process"]
    query_params = [query: [{:"publish_now", publish_now}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Remove a tag from a question

  
  """
  def remove_question_tag(id, tag) do
    method = [method: :delete]
    url = [url: "/trivia/questions/{id}/tags/#{tag}"]
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
  Remove a tag from a batch of questions

  ll questions that have the tag and match filters will have it removed. The returned number is the number of questions updated.
  """
  def remove_tag_to_questions_batch(tag, filter_search, filter_idset, filter_category, filter_tag, filter_tagset, filter_type, filter_published, filter_import_id) do
    method = [method: :delete]
    url = [url: "/trivia/questions/tags/#{tag}"]
    query_params = [query: [{:"filter_search", filter_search}, {:"filter_idset", filter_idset}, {:"filter_category", filter_category}, {:"filter_tag", filter_tag}, {:"filter_tagset", filter_tagset}, {:"filter_type", filter_type}, {:"filter_published", filter_published}, {:"filter_import_id", filter_import_id}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  List and search tags by the beginning of the string

  For performance reasons, search &amp; category filters are mutually exclusive. If category is specified, search filter will be ignored in order to do fast matches for typeahead.
  """
  def search_question_tags(filter_search, filter_category, filter_import_id) do
    method = [method: :get]
    url = [url: "/trivia/tags"]
    query_params = [query: [{:"filter_search", filter_search}, {:"filter_category", filter_category}, {:"filter_import_id", filter_import_id}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Update an import job

  Changes should be made before process is started for there to be any effect.
  """
  def update_import_job(id, request) do
    method = [method: :put]
    url = [url: "/trivia/import/#{id}"]
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
  Update a question

  
  """
  def update_question(id, question) do
    method = [method: :put]
    url = [url: "/trivia/questions/#{id}"]
    query_params = []
    header_params = []
    body_params = [body: question]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Update an answer for a question

  
  """
  def update_question_answer(question_id, id, answer) do
    method = [method: :put]
    url = [url: "/trivia/questions/{question_id}/answers/#{id}"]
    query_params = []
    header_params = []
    body_params = [body: answer]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Update a question template

  
  """
  def update_question_template(id, question_template_resource) do
    method = [method: :put]
    url = [url: "/trivia/questions/templates/#{id}"]
    query_params = []
    header_params = []
    body_params = [body: question_template_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Bulk update questions

  Will update all questions that match filters used (or all questions in system if no filters used). Body should match a question resource with only those properties you wish to set. Null values will be ignored. Returned number is how many were updated.
  """
  def update_questions_in_bulk(question, filter_search, filter_idset, filter_category, filter_tagset, filter_type, filter_published, filter_import_id) do
    method = [method: :put]
    url = [url: "/trivia/questions"]
    query_params = [query: [{:"filter_search", filter_search}, {:"filter_idset", filter_idset}, {:"filter_category", filter_category}, {:"filter_tagset", filter_tagset}, {:"filter_type", filter_type}, {:"filter_published", filter_published}, {:"filter_import_id", filter_import_id}]]
    header_params = []
    body_params = [body: question]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
