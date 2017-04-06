defmodule KnetikPlatformAPIDocumentationLatest.Api.ReportingUsers do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.ReportingUsers.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  def get_user_registrations(granularity, start_date, end_date) do
    method = [method: :get]
    url = [url: "/reporting/users/registrations"]
    query_params = [query: [{:"granularity", granularity}, {:"startDate", start_date}, {:"endDate", end_date}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
