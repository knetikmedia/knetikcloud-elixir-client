defmodule KnetikPlatformAPIDocumentationLatest.Api.StoreSubscriptions do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.StoreSubscriptions.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Creates a subscription item and associated plans

  
  """
  def create_subscription(subscription_resource) do
    method = [method: :post]
    url = [url: "/subscriptions"]
    query_params = []
    header_params = []
    body_params = [body: subscription_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Create a subscription template

  Subscription Templates define a type of subscription and the properties they have.
  """
  def create_subscription_template(subscription_template_resource) do
    method = [method: :post]
    url = [url: "/subscriptions/templates"]
    query_params = []
    header_params = []
    body_params = [body: subscription_template_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Delete a subscription plan

  Must not be locked or a migration target
  """
  def delete_subscription(id, plan_id) do
    method = [method: :delete]
    url = [url: "/subscriptions/{id}/plans/#{plan_id}"]
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
  Delete a subscription template

  
  """
  def delete_subscription_template(id, cascade) do
    method = [method: :delete]
    url = [url: "/subscriptions/templates/#{id}"]
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
  Retrieve a single subscription item and associated plans

  
  """
  def get_subscription(id) do
    method = [method: :get]
    url = [url: "/subscriptions/#{id}"]
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
  Get a single subscription template

  Subscription Templates define a type of subscription and the properties they have.
  """
  def get_subscription_template(id) do
    method = [method: :get]
    url = [url: "/subscriptions/templates/#{id}"]
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
  List and search subscription templates

  
  """
  def get_subscription_templates(size, page, order) do
    method = [method: :get]
    url = [url: "/subscriptions/templates"]
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
  List available subscription items and associated plans

  
  """
  def get_subscriptions(size, page, order) do
    method = [method: :get]
    url = [url: "/subscriptions"]
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
  Processes subscriptions and charge dues

  
  """
  def process_subscriptions() do
    method = [method: :post]
    url = [url: "/subscriptions/process"]
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
  Updates a subscription item and associated plans

  Will not remove plans left out
  """
  def update_subscription(id, subscription_resource) do
    method = [method: :put]
    url = [url: "/subscriptions/#{id}"]
    query_params = []
    header_params = []
    body_params = [body: subscription_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Update a subscription template

  
  """
  def update_subscription_template(id, subscription_template_resource) do
    method = [method: :put]
    url = [url: "/subscriptions/templates/#{id}"]
    query_params = []
    header_params = []
    body_params = [body: subscription_template_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
