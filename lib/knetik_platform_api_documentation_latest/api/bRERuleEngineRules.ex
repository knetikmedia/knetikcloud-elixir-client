defmodule KnetikPlatformAPIDocumentationLatest.Api.BRERuleEngineRules do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.BRERuleEngineRules.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

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

  def get_bre_rules(filter_name, filter_enabled, filter_system, filter_trigger, filter_action, filter_condition, size, page) do
    method = [method: :get]
    url = [url: "/bre/rules"]
    query_params = [query: [{:"filterName", filter_name}, {:"filterEnabled", filter_enabled}, {:"filterSystem", filter_system}, {:"filterTrigger", filter_trigger}, {:"filterAction", filter_action}, {:"filterCondition", filter_condition}, {:"size", size}, {:"page", page}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

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
