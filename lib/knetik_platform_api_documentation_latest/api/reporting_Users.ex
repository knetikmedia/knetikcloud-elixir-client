defmodule KnetikPlatformAPIDocumentationLatest.Api.Reporting_Users do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Reporting_Users.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://jsapi-integration.us-east-1.elasticbeanstalk.com"
  plug Tesla.Middleware.JSON

  @doc """
  Get user registration info

  Get user registration counts grouped by time range. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; REPORTING_USER_ADMIN
  """
  def get_user_registrations(granularity, start_date, end_date, size, page) do
    method = [method: :get]
    url = [url: "/reporting/users/registrations"]
    query_params = [query: [{:"granularity", granularity}, {:"start_date", start_date}, {:"end_date", end_date}, {:"size", size}, {:"page", page}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
