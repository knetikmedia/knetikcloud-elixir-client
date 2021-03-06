defmodule KnetikPlatformAPIDocumentationLatest.Api.Rule_Engine_Globals do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Rule_Engine_Globals.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://jsapi-integration.us-east-1.elasticbeanstalk.com"
  plug Tesla.Middleware.JSON

  @doc """
  Create a global definition

  Once created you can then use in a custom rule. Note that global definitions cannot be modified or deleted if in use. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; BRE_RULE_ENGINE_GLOBALS_ADMIN
  """
  def create_bre_global(bre_global_resource) do
    method = [method: :post]
    url = [url: "/bre/globals/definitions"]
    query_params = []
    header_params = []
    body_params = [body: bre_global_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Delete a global

  May fail if there are existing rules against it. Cannot delete core globals. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; BRE_RULE_ENGINE_GLOBALS_ADMIN
  """
  def delete_bre_global(id) do
    method = [method: :delete]
    url = [url: "/bre/globals/definitions/#{id}"]
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
  Get a single global definition

  &lt;b&gt;Permissions Needed:&lt;/b&gt; BRE_RULE_ENGINE_GLOBALS_USER
  """
  def get_bre_global(id) do
    method = [method: :get]
    url = [url: "/bre/globals/definitions/#{id}"]
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
  List global definitions

  &lt;b&gt;Permissions Needed:&lt;/b&gt; BRE_RULE_ENGINE_GLOBALS_USER
  """
  def get_bre_globals(filter_system, size, page) do
    method = [method: :get]
    url = [url: "/bre/globals/definitions"]
    query_params = [query: [{:"filter_system", filter_system}, {:"size", size}, {:"page", page}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Update a global definition

  May fail if new parameters mismatch requirements of existing rules. Cannot update core globals. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; BRE_RULE_ENGINE_GLOBALS_ADMIN
  """
  def update_bre_global(id, bre_global_resource) do
    method = [method: :put]
    url = [url: "/bre/globals/definitions/#{id}"]
    query_params = []
    header_params = []
    body_params = [body: bre_global_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
