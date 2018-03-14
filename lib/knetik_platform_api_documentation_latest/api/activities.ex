defmodule KnetikPlatformAPIDocumentationLatest.Api.Activities do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Activities.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://jsapi-integration.us-east-1.elasticbeanstalk.com"
  plug Tesla.Middleware.JSON

  @doc """
  Add a user to an occurrence

  If called with no body, defaults to the user making the call.
  """
  def add_user(activity_occurrence_id, test, bypass_restrictions, user_id) do
    method = [method: :post]
    url = [url: "/activity-occurrences/#{activity_occurrence_id}/users"]
    query_params = [query: [{:"test", test}, {:"bypass_restrictions", bypass_restrictions}]]
    header_params = []
    body_params = [body: user_id]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Create an activity

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ACTIVITIES_ADMIN
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

  Has to enforce extra rules if not used as an admin. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; ACTIVITIES_USER or ACTIVITIES_ADMIN
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

  Activity Templates define a type of activity and the properties they have. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
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

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ACTIVITIES_ADMIN
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

  If cascade &#x3D; &#39;detach&#39;, it will force delete the template even if it&#39;s attached to other objects. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
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

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
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

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
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

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ACTIVITIES_USER or ACTIVITIES_ADMIN
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

  &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN or ACTIVITIES_ADMIN
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

  &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN or ACTIVITIES_ADMIN
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

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ACTIVITIES_USER or ACTIVITIES_ADMIN
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
  Remove a user from an occurrence

  
  """
  def remove_user(activity_occurrence_id, user_id, ban, bypass_restrictions) do
    method = [method: :delete]
    url = [url: "/activity-occurrences/{activity_occurrence_id}/users/#{user_id}"]
    query_params = [query: [{:"ban", ban}, {:"bypass_restrictions", bypass_restrictions}]]
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

  In addition to user permissions requirements there is security based on the core_settings.results_trust setting. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; ACTIVITIES_USER or ACTIVITIES_ADMIN
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
  Sets the settings of an activity occurrence

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ACTIVITIES_USER and host or ACTIVITIES_ADMIN
  """
  def set_activity_occurrence_settings(activity_occurrence_id, settings) do
    method = [method: :put]
    url = [url: "/activity-occurrences/#{activity_occurrence_id}/settings"]
    query_params = []
    header_params = []
    body_params = [body: settings]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Set a user&#39;s status within an occurrence

  
  """
  def set_user_status(activity_occurrence_id, user_id, status) do
    method = [method: :put]
    url = [url: "/activity-occurrences/{activity_occurrence_id}/users/#{user_id}/status"]
    query_params = []
    header_params = []
    body_params = [body: status]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Update an activity

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ACTIVITIES_ADMIN
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
  Update the status of an activity occurrence

  If setting to &#39;FINISHED&#39; reward will be run based on current metrics that have been recorded already. Alternatively, see results endpoint to finish and record all metrics at once. Can be called by non-host participants if non_host_status_control is true. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; ACTIVITIES_USER and host or ACTIVITIES_ADMIN
  """
  def update_activity_occurrence_status(activity_occurrence_id, activity_occurrence_status) do
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

  &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
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
