defmodule KnetikPlatformAPIDocumentationLatest.Api.CampaignsChallenges do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.CampaignsChallenges.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Create a challenge

  Challenges do not run on their own.  They must be added to a campaign before events will spawn. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; CHALLENGES_ADMIN
  """
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

  @doc """
  Create a challenge activity

  &lt;b&gt;Permissions Needed:&lt;/b&gt; CHALLENGES_ADMIN
  """
  def create_challenge_activity(challenge_id, challenge_activity_resource, validate_settings) do
    method = [method: :post]
    url = [url: "/challenges/#{challenge_id}/activities"]
    query_params = [query: [{:"validate_settings", validate_settings}]]
    header_params = []
    body_params = [body: challenge_activity_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Create a challenge activity template

  Challenge Activity Templates define a type of challenge activity and the properties they have. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  """
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

  @doc """
  Create a challenge template

  Challenge Templates define a type of challenge and the properties they have. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  """
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

  @doc """
  Delete a challenge

  &lt;b&gt;Permissions Needed:&lt;/b&gt; CHALLENGES_ADMIN
  """
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

  @doc """
  Delete a challenge activity

  A challenge can have multiple instances of the same activity and thus the id used is of the specific entry within the challenge. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; CHALLENGES_ADMIN
  """
  def delete_challenge_activity(id, challenge_id) do
    method = [method: :delete]
    url = [url: "/challenges/{challenge_id}/activities/#{id}"]
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
  Delete a challenge activity template

  If cascade &#x3D; &#39;detach&#39;, it will force delete the template even if it&#39;s attached to other objects. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  """
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

  @doc """
  Delete a challenge event

  &lt;b&gt;Permissions Needed:&lt;/b&gt; CHALLENGES_ADMIN
  """
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

  @doc """
  Delete a challenge template

  If cascade &#x3D; &#39;detach&#39;, it will force delete the template even if it&#39;s attached to other objects. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  """
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

  @doc """
  Retrieve a challenge

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
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

  @doc """
  List and search challenge activities

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
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

  @doc """
  Get a single challenge activity

  A challenge can have multiple instances of the same activity and thus the id used is of the specific entry within the challenge. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
  def get_challenge_activity(id, challenge_id) do
    method = [method: :get]
    url = [url: "/challenges/{challenge_id}/activities/#{id}"]
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
  Get a single challenge activity template

  &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN or CHALLENGES_ADMIN
  """
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

  @doc """
  List and search challenge activity templates

  &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN or CHALLENGES_ADMIN
  """
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

  @doc """
  Retrieve a single challenge event details

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
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

  @doc """
  Retrieve a list of challenge events

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
  def get_challenge_events(filter_start_date, filter_end_date, filter_campaigns, filter_challenge, size, page, order) do
    method = [method: :get]
    url = [url: "/challenges/events"]
    query_params = [query: [{:"filter_start_date", filter_start_date}, {:"filter_end_date", filter_end_date}, {:"filter_campaigns", filter_campaigns}, {:"filter_challenge", filter_challenge}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Get a single challenge template

  &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN or CHALLENGES_ADMIN
  """
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

  @doc """
  List and search challenge templates

  &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN or CHALLENGES_ADMIN
  """
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

  @doc """
  Retrieve a list of challenges

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
  def get_challenges(filter_active_campaign, filter_start_date, filter_end_date, size, page, order) do
    method = [method: :get]
    url = [url: "/challenges"]
    query_params = [query: [{:"filter_active_campaign", filter_active_campaign}, {:"filter_start_date", filter_start_date}, {:"filter_end_date", filter_end_date}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Update a challenge

  If the challenge is a copy, changes will propagate to all the related challenges. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; CHALLENGES_ADMIN
  """
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

  @doc """
  Update a challenge activity

  A challenge can have multiple instances of the same activity and thus the id used is of the specific entry within the challenge. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; CHALLENGES_ADMIN
  """
  def update_challenge_activity(id, challenge_id, challenge_activity_resource, validate_settings) do
    method = [method: :put]
    url = [url: "/challenges/{challenge_id}/activities/#{id}"]
    query_params = [query: [{:"validateSettings", validate_settings}]]
    header_params = []
    body_params = [body: challenge_activity_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Update an challenge activity template

  &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  """
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

  @doc """
  Update a challenge template

  &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  """
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
