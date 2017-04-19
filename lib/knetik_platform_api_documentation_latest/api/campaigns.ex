defmodule KnetikPlatformAPIDocumentationLatest.Api.Campaigns do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Campaigns.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

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

  def get_campaign_challenges(id) do
    method = [method: :get]
    url = [url: "/campaigns/#{id}/challenges"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

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

  def get_campaigns(filter_active, size, page, order) do
    method = [method: :get]
    url = [url: "/campaigns"]
    query_params = [query: [{:"filterActive", filter_active}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

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
