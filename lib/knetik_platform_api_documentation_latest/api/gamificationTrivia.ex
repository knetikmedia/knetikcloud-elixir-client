defmodule KnetikPlatformAPIDocumentationLatest.Api.GamificationTrivia do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.GamificationTrivia.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

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

  def add_tag_to_questions_batch(tag, filter_search, filter_idset, filter_category, filter_tag, filter_tagset, filter_type, filter_published, filter_import_id) do
    method = [method: :post]
    url = [url: "/trivia/questions/tags"]
    query_params = [query: [{:"filterSearch", filter_search}, {:"filterIdset", filter_idset}, {:"filterCategory", filter_category}, {:"filterTag", filter_tag}, {:"filterTagset", filter_tagset}, {:"filterType", filter_type}, {:"filterPublished", filter_published}, {:"filterImportId", filter_import_id}]]
    header_params = []
    body_params = [body: tag]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

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

  def get_import_jobs(filter_vendor, filter_category, filter_name, filter_status, size, page, order) do
    method = [method: :get]
    url = [url: "/trivia/import"]
    query_params = [query: [{:"filterVendor", filter_vendor}, {:"filterCategory", filter_category}, {:"filterName", filter_name}, {:"filterStatus", filter_status}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

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

  def get_questions(size, page, order, filter_search, filter_idset, filter_category, filter_tagset, filter_tag, filter_type, filter_published, filter_import_id) do
    method = [method: :get]
    url = [url: "/trivia/questions"]
    query_params = [query: [{:"size", size}, {:"page", page}, {:"order", order}, {:"filterSearch", filter_search}, {:"filterIdset", filter_idset}, {:"filterCategory", filter_category}, {:"filterTagset", filter_tagset}, {:"filterTag", filter_tag}, {:"filterType", filter_type}, {:"filterPublished", filter_published}, {:"filterImportId", filter_import_id}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_questions_count(filter_search, filter_idset, filter_category, filter_tag, filter_tagset, filter_type, filter_published) do
    method = [method: :get]
    url = [url: "/trivia/questions/count"]
    query_params = [query: [{:"filterSearch", filter_search}, {:"filterIdset", filter_idset}, {:"filterCategory", filter_category}, {:"filterTag", filter_tag}, {:"filterTagset", filter_tagset}, {:"filterType", filter_type}, {:"filterPublished", filter_published}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def process_import_job(id, publish_now) do
    method = [method: :post]
    url = [url: "/trivia/import/#{id}/process"]
    query_params = [query: [{:"publishNow", publish_now}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

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

  def remove_tag_to_questions_batch(tag, filter_search, filter_idset, filter_category, filter_tag, filter_tagset, filter_type, filter_published, filter_import_id) do
    method = [method: :delete]
    url = [url: "/trivia/questions/tags/#{tag}"]
    query_params = [query: [{:"filterSearch", filter_search}, {:"filterIdset", filter_idset}, {:"filterCategory", filter_category}, {:"filterTag", filter_tag}, {:"filterTagset", filter_tagset}, {:"filterType", filter_type}, {:"filterPublished", filter_published}, {:"filterImportId", filter_import_id}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def search_question_tags(filter_search, filter_category, filter_import_id) do
    method = [method: :get]
    url = [url: "/trivia/tags"]
    query_params = [query: [{:"filterSearch", filter_search}, {:"filterCategory", filter_category}, {:"filterImportId", filter_import_id}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

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

  def update_questions_in_bulk(question, filter_search, filter_idset, filter_category, filter_tagset, filter_type, filter_published, filter_import_id) do
    method = [method: :put]
    url = [url: "/trivia/questions"]
    query_params = [query: [{:"filterSearch", filter_search}, {:"filterIdset", filter_idset}, {:"filterCategory", filter_category}, {:"filterTagset", filter_tagset}, {:"filterType", filter_type}, {:"filterPublished", filter_published}, {:"filterImportId", filter_import_id}]]
    header_params = []
    body_params = [body: question]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
