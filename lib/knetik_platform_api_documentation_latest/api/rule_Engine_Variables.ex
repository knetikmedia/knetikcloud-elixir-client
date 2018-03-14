defmodule KnetikPlatformAPIDocumentationLatest.Api.Rule_Engine_Variables do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Rule_Engine_Variables.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://jsapi-integration.us-east-1.elasticbeanstalk.com"
  plug Tesla.Middleware.JSON

  @doc """
  Get a list of variable types available

  Types include integer, string, user and invoice. These are used to qualify trigger parameters and action variables with strong typing. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; BRE_RULE_ENGINE_VARIABLES_USER
  """
  def get_bre_variable_types() do
    method = [method: :get]
    url = [url: "/bre/variable-types"]
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
  List valid values for a type

  Used to lookup users to fill in a user constant for example. Only types marked as enumerable are suppoorted here. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; BRE_RULE_ENGINE_VARIABLES_USER
  """
  def get_bre_variable_values(name, filter_name, size, page) do
    method = [method: :get]
    url = [url: "/bre/variable-types/#{name}/values"]
    query_params = [query: [{:"filter_name", filter_name}, {:"size", size}, {:"page", page}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
