defmodule KnetikPlatformAPIDocumentationLatest.Api.CampaignsChallenges do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.CampaignsChallenges.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  def create_challenge(challenge_resource) do
    method = [method: :post]
    url = [url: "/challenges"]
    query_params = []
    header_params = []
    body_params = [body: challenge_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def create_challenge_activity(challenge_id, challenge_activity_resource, validate_settings) do
    method = [method: :post]
    url = [url: "/challenges/#{challenge_id}/activities"]
    query_params = [query: [{:"validateSettings", validate_settings}]]
    header_params = []
    body_params = [body: challenge_activity_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def create_challenge_activity_template(challenge_activity_template_resource) do
    method = [method: :post]
    url = [url: "/challenge-activities/templates"]
    query_params = []
    header_params = []
    body_params = [body: challenge_activity_template_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def create_challenge_template(challenge_template_resource) do
    method = [method: :post]
    url = [url: "/challenges/templates"]
    query_params = []
    header_params = []
    body_params = [body: challenge_template_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def delete_challenge(id) do
    method = [method: :delete]
    url = [url: "/challenges/#{id}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def delete_challenge_activity(activity_id, challenge_id) do
    method = [method: :delete]
    url = [url: "/challenges/{challenge_id}/activities/#{activity_id}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def delete_challenge_activity_template(id, cascade) do
    method = [method: :delete]
    url = [url: "/challenge-activities/templates/#{id}"]
    query_params = [query: [{:"cascade", cascade}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def delete_challenge_event(id) do
    method = [method: :delete]
    url = [url: "/challenges/events/#{id}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def delete_challenge_template(id, cascade) do
    method = [method: :delete]
    url = [url: "/challenges/templates/#{id}"]
    query_params = [query: [{:"cascade", cascade}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_challenge(id) do
    method = [method: :get]
    url = [url: "/challenges/#{id}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_challenge_activities(challenge_id, size, page, order) do
    method = [method: :get]
    url = [url: "/challenges/#{challenge_id}/activities"]
    query_params = [query: [{:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_challenge_activity(activity_id) do
    method = [method: :get]
    url = [url: "/challenges/{challenge_id}/activities/#{activity_id}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_challenge_activity_template(id) do
    method = [method: :get]
    url = [url: "/challenge-activities/templates/#{id}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_challenge_activity_templates(size, page, order) do
    method = [method: :get]
    url = [url: "/challenge-activities/templates"]
    query_params = [query: [{:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_challenge_event(id) do
    method = [method: :get]
    url = [url: "/challenges/events/#{id}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_challenge_events(filter_start_date, filter_end_date, filter_campaigns, filter_challenge, size, page, order) do
    method = [method: :get]
    url = [url: "/challenges/events"]
    query_params = [query: [{:"filterStartDate", filter_start_date}, {:"filterEndDate", filter_end_date}, {:"filterCampaigns", filter_campaigns}, {:"filterChallenge", filter_challenge}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_challenge_template(id) do
    method = [method: :get]
    url = [url: "/challenges/templates/#{id}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_challenge_templates(size, page, order) do
    method = [method: :get]
    url = [url: "/challenges/templates"]
    query_params = [query: [{:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_challenges(filter_template, filter_active_campaign, filter_start_date, filter_end_date, size, page, order) do
    method = [method: :get]
    url = [url: "/challenges"]
    query_params = [query: [{:"filterTemplate", filter_template}, {:"filterActiveCampaign", filter_active_campaign}, {:"filterStartDate", filter_start_date}, {:"filterEndDate", filter_end_date}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def update_challenge(id, challenge_resource) do
    method = [method: :put]
    url = [url: "/challenges/#{id}"]
    query_params = []
    header_params = []
    body_params = [body: challenge_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def update_challenge_activity(activity_id, challenge_id, challenge_activity_resource) do
    method = [method: :put]
    url = [url: "/challenges/{challenge_id}/activities/#{activity_id}"]
    query_params = []
    header_params = []
    body_params = [body: challenge_activity_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def update_challenge_activity_template(id, challenge_activity_template_resource) do
    method = [method: :put]
    url = [url: "/challenge-activities/templates/#{id}"]
    query_params = []
    header_params = []
    body_params = [body: challenge_activity_template_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def update_challenge_template(id, challenge_template_resource) do
    method = [method: :put]
    url = [url: "/challenges/templates/#{id}"]
    query_params = []
    header_params = []
    body_params = [body: challenge_template_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
