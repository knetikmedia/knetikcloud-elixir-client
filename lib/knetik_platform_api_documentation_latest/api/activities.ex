defmodule KnetikPlatformAPIDocumentationLatest.Api.Activities do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Activities.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Create an activity

  
  """
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

  @doc """
  Create a new activity occurrence. Ex: start a game

  Has to enforce extra rules if not used as an admin
  """
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

  @doc """
  Create a activity template

  Activity Templates define a type of activity and the properties they have
  """
  def create_activity_template(activity_template_resource) do
    method = [method: :post]
    url = [url: "/activities/templates"]
    query_params = []
    header_params = []
    body_params = [body: activity_template_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Delete an activity

  
  """
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

  @doc """
  Delete a activity template

  If cascade &#x3D; &#39;detach&#39;, it will force delete the template even if it&#39;s attached to other objects
  """
  def delete_activity_template(id, cascade) do
    method = [method: :delete]
    url = [url: "/activities/templates/#{id}"]
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
  List activity definitions

  
  """
  def get_activities(filter_template, filter_name, filter_id, size, page, order) do
    method = [method: :get]
    url = [url: "/activities"]
    query_params = [query: [{:"filter_template", filter_template}, {:"filter_name", filter_name}, {:"filter_id", filter_id}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Get a single activity

  
  """
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

  @doc """
  Load a single activity occurrence details

  
  """
  def get_activity_occurrence_details(activity_occurrence_id) do
    method = [method: :get]
    url = [url: "/activity-occurrences/#{activity_occurrence_id}"]
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
  Get a single activity template

  
  """
  def get_activity_template(id) do
    method = [method: :get]
    url = [url: "/activities/templates/#{id}"]
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
  List and search activity templates

  
  """
  def get_activity_templates(size, page, order) do
    method = [method: :get]
    url = [url: "/activities/templates"]
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
  List activity occurrences

  
  """
  def list_activity_occurrences(filter_activity, filter_status, filter_event, filter_challenge, size, page, order) do
    method = [method: :get]
    url = [url: "/activity-occurrences"]
    query_params = [query: [{:"filter_activity", filter_activity}, {:"filter_status", filter_status}, {:"filter_event", filter_event}, {:"filter_challenge", filter_challenge}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Sets the status of an activity occurrence to FINISHED and logs metrics

  
  """
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

  @doc """
  Update an activity

  
  """
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

  @doc """
  Updated the status of an activity occurrence

  If setting to &#39;FINISHED&#39; reward will be run based on current metrics that have been recorded already. Aternatively, see results endpoint to finish and record all metrics at once.
  """
  def update_activity_occurrence(activity_occurrence_id, activity_occurrence_status) do
    method = [method: :put]
    url = [url: "/activity-occurrences/#{activity_occurrence_id}/status"]
    query_params = []
    header_params = []
    body_params = [body: activity_occurrence_status]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Update an activity template

  
  """
  def update_activity_template(id, activity_template_resource) do
    method = [method: :put]
    url = [url: "/activities/templates/#{id}"]
    query_params = []
    header_params = []
    body_params = [body: activity_template_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
