defmodule KnetikPlatformAPIDocumentationLatest.Api.Rule_Engine_Triggers do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Rule_Engine_Triggers.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://jsapi-integration.us-east-1.elasticbeanstalk.com"
  plug Tesla.Middleware.JSON

  @doc """
  Create a trigger

  Customer added triggers will not be fired automatically or have rules associated with them by default. Custom rules must be added to get use from the trigger and it must then be fired from the outside. See the Bre Event services. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; BRE_RULE_ENGINE_TRIGGERS_ADMIN
  """
  def create_bre_trigger(bre_trigger_resource) do
    method = [method: :post]
    url = [url: "/bre/triggers"]
    query_params = []
    header_params = []
    body_params = [body: bre_trigger_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Delete a trigger

  May fail if there are existing rules against it. Cannot delete core triggers. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; BRE_RULE_ENGINE_TRIGGERS_ADMIN
  """
  def delete_bre_trigger(event_name) do
    method = [method: :delete]
    url = [url: "/bre/triggers/#{event_name}"]
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
  Get a single trigger

  &lt;b&gt;Permissions Needed:&lt;/b&gt; BRE_RULE_ENGINE_TRIGGERS_USER
  """
  def get_bre_trigger(event_name) do
    method = [method: :get]
    url = [url: "/bre/triggers/#{event_name}"]
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
  List triggers

  &lt;b&gt;Permissions Needed:&lt;/b&gt; BRE_RULE_ENGINE_TRIGGERS_USER
  """
  def get_bre_triggers(filter_system, filter_category, filter_tags, filter_name, filter_search, size, page) do
    method = [method: :get]
    url = [url: "/bre/triggers"]
    query_params = [query: [{:"filter_system", filter_system}, {:"filter_category", filter_category}, {:"filter_tags", filter_tags}, {:"filter_name", filter_name}, {:"filter_search", filter_search}, {:"size", size}, {:"page", page}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Update a trigger

  May fail if new parameters mismatch requirements of existing rules. Cannot update core triggers. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; BRE_RULE_ENGINE_TRIGGERS_ADMIN
  """
  def update_bre_trigger(event_name, bre_trigger_resource) do
    method = [method: :put]
    url = [url: "/bre/triggers/#{event_name}"]
    query_params = []
    header_params = []
    body_params = [body: bre_trigger_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
