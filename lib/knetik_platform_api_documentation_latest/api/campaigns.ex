defmodule KnetikPlatformAPIDocumentationLatest.Api.Campaigns do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Campaigns.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Add a challenge to a campaign

  &lt;b&gt;Permissions Needed:&lt;/b&gt; CAMPAIGNS_ADMIN
  """
  def add_challenge_to_campaign(id, challenge_id) do
    method = [method: :post]
    url = [url: "/campaigns/#{id}/challenges"]
    query_params = []
    header_params = []
    body_params = [body: challenge_id]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Create a campaign

  &lt;b&gt;Permissions Needed:&lt;/b&gt; CAMPAIGNS_ADMIN
  """
  def create_campaign(campaign_resource) do
    method = [method: :post]
    url = [url: "/campaigns"]
    query_params = []
    header_params = []
    body_params = [body: campaign_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Create a campaign template

  Campaign Templates define a type of campaign and the properties they have. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  """
  def create_campaign_template(campaign_template_resource) do
    method = [method: :post]
    url = [url: "/campaigns/templates"]
    query_params = []
    header_params = []
    body_params = [body: campaign_template_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Delete a campaign

  &lt;b&gt;Permissions Needed:&lt;/b&gt; CAMPAIGNS_ADMIN
  """
  def delete_campaign(id) do
    method = [method: :delete]
    url = [url: "/campaigns/#{id}"]
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
  Delete a campaign template

  If cascade &#x3D; &#39;detach&#39;, it will force delete the template even if it&#39;s attached to other objects. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  """
  def delete_campaign_template(id, cascade) do
    method = [method: :delete]
    url = [url: "/campaigns/templates/#{id}"]
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
  Returns a single campaign

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
  def get_campaign(id) do
    method = [method: :get]
    url = [url: "/campaigns/#{id}"]
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
  List the challenges associated with a campaign

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
  def get_campaign_challenges(id, filter_start_date, filter_end_date, size, page, order) do
    method = [method: :get]
    url = [url: "/campaigns/#{id}/challenges"]
    query_params = [query: [{:"filter_start_date", filter_start_date}, {:"filter_end_date", filter_end_date}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Get a single campaign template

  &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN or CAMPAIGNS_ADMIN
  """
  def get_campaign_template(id) do
    method = [method: :get]
    url = [url: "/campaigns/templates/#{id}"]
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
  List and search campaign templates

  &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN or CAMPAIGNS_ADMIN
  """
  def get_campaign_templates(size, page, order) do
    method = [method: :get]
    url = [url: "/campaigns/templates"]
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
  List and search campaigns

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
  def get_campaigns(filter_active, size, page, order) do
    method = [method: :get]
    url = [url: "/campaigns"]
    query_params = [query: [{:"filter_active", filter_active}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Remove a challenge from a campaign

  &lt;b&gt;Permissions Needed:&lt;/b&gt; CAMPAIGNS_ADMIN
  """
  def remove_challenge_from_campaign(campaign_id, id) do
    method = [method: :delete]
    url = [url: "/campaigns/{campaign_id}/challenges/#{id}"]
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
  Update a campaign

  &lt;b&gt;Permissions Needed:&lt;/b&gt; CAMPAIGNS_ADMIN
  """
  def update_campaign(id, campaign_resource) do
    method = [method: :put]
    url = [url: "/campaigns/#{id}"]
    query_params = []
    header_params = []
    body_params = [body: campaign_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Update an campaign template

  &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  """
  def update_campaign_template(id, campaign_template_resource) do
    method = [method: :put]
    url = [url: "/campaigns/templates/#{id}"]
    query_params = []
    header_params = []
    body_params = [body: campaign_template_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
