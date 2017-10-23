defmodule KnetikPlatformAPIDocumentationLatest.Api.BRERuleEngineRules do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.BRERuleEngineRules.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Create a rule

  Rules define which actions to run when a given event verifies the specified condition. Full list of predicates and other type of expressions can be found at GET /bre/expressions/
  """
  def create_bre_rule(bre_rule) do
    method = [method: :post]
    url = [url: "/bre/rules"]
    query_params = []
    header_params = []
    body_params = [body: bre_rule]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Delete a rule

  May fail if there are existing rules against it. Cannot delete core rules
  """
  def delete_bre_rule(id) do
    method = [method: :delete]
    url = [url: "/bre/rules/#{id}"]
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
  Returns a string representation of the provided expression

  
  """
  def get_bre_expression_as_string(expression) do
    method = [method: :post]
    url = [url: "/bre/rules/expression-as-string"]
    query_params = []
    header_params = []
    body_params = [body: expression]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Get a single rule

  
  """
  def get_bre_rule(id) do
    method = [method: :get]
    url = [url: "/bre/rules/#{id}"]
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
  List rules

  
  """
  def get_bre_rules(filter_name, filter_enabled, filter_system, filter_trigger, filter_action, filter_condition, size, page) do
    method = [method: :get]
    url = [url: "/bre/rules"]
    query_params = [query: [{:"filter_name", filter_name}, {:"filter_enabled", filter_enabled}, {:"filter_system", filter_system}, {:"filter_trigger", filter_trigger}, {:"filter_action", filter_action}, {:"filter_condition", filter_condition}, {:"size", size}, {:"page", page}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Enable or disable a rule

  This is helpful for turning off systems rules which cannot be deleted or modified otherwise
  """
  def set_bre_rule(id, enabled) do
    method = [method: :put]
    url = [url: "/bre/rules/#{id}/enabled"]
    query_params = []
    header_params = []
    body_params = [body: enabled]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Update a rule

  Cannot update system rules
  """
  def update_bre_rule(id, bre_rule) do
    method = [method: :put]
    url = [url: "/bre/rules/#{id}"]
    query_params = []
    header_params = []
    body_params = [body: bre_rule]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
