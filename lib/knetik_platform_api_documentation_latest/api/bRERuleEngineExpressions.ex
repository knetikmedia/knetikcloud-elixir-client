defmodule KnetikPlatformAPIDocumentationLatest.Api.BRERuleEngineExpressions do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.BRERuleEngineExpressions.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Lookup a specific expression

  &lt;b&gt;Permissions Needed:&lt;/b&gt; BRE_RULE_ENGINE_EXPRESSIONS_USER
  """
  def get_bre_expression(type) do
    method = [method: :get]
    url = [url: "/bre/expressions/#{type}"]
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
  Get a list of supported expressions to use in conditions or actions

  Each resource contains a type and a definition that are read-only, all the other fields must be provided when using the expression in a rule. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; BRE_RULE_ENGINE_EXPRESSIONS_USER
  """
  def get_bre_expressions(filter_type_group) do
    method = [method: :get]
    url = [url: "/bre/expressions"]
    query_params = [query: [{:"filter_type_group", filter_type_group}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Returns the textual representation of an expression

  &lt;b&gt;Permissions Needed:&lt;/b&gt; BRE_RULE_ENGINE_EXPRESSIONS_USER
  """
  def get_expression_as_text(expression) do
    method = [method: :post]
    url = [url: "/bre/expressions"]
    query_params = []
    header_params = []
    body_params = [body: expression]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
