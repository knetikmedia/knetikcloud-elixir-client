defmodule KnetikPlatformAPIDocumentationLatest.Api.Activities do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Activities.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  def create_activity(activity_resource) do
    method = [method: :post]
    url = [url: "/activities"]
    query_params = []
    header_params = []
    body_params = [body: activity_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def create_activity_occurrence(test, activity_occurrence_resource) do
    method = [method: :post]
    url = [url: "/activity-occurrences"]
    query_params = [query: [{:"test", test}]]
    header_params = []
    body_params = [body: activity_occurrence_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def delete_activity(id) do
    method = [method: :delete]
    url = [url: "/activities/#{id}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_activities(filter_template, filter_name, filter_id, size, page, order) do
    method = [method: :get]
    url = [url: "/activities"]
    query_params = [query: [{:"filterTemplate", filter_template}, {:"filterName", filter_name}, {:"filterId", filter_id}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_activity(id) do
    method = [method: :get]
    url = [url: "/activities/#{id}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def set_activity_occurrence_results(activity_occurrence_id, activity_occurrence_results) do
    method = [method: :post]
    url = [url: "/activity-occurrences/#{activity_occurrence_id}/results"]
    query_params = []
    header_params = []
    body_params = [body: activity_occurrence_results]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def update_activity(id, activity_resource) do
    method = [method: :put]
    url = [url: "/activities/#{id}"]
    query_params = []
    header_params = []
    body_params = [body: activity_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def update_activity_occurrence(activity_occurrence_id, activity_cccurrence_status) do
    method = [method: :put]
    url = [url: "/activity-occurrences/#{activity_occurrence_id}/status"]
    query_params = []
    header_params = []
    body_params = [body: activity_cccurrence_status]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
