defmodule KnetikPlatformAPIDocumentationLatest.Api.UsersSubscriptions do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.UsersSubscriptions.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Get details about a user&#39;s subscription

  
  """
  def get_user_subscription_details(user_id, inventory_id) do
    method = [method: :get]
    url = [url: "/users/{user_id}/subscriptions/#{inventory_id}"]
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
  Get details about a user&#39;s subscriptions

  
  """
  def get_users_subscription_details(user_id) do
    method = [method: :get]
    url = [url: "/users/#{user_id}/subscriptions"]
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
  Reactivate a subscription and charge fee

  
  """
  def reactivate_user_subscription(user_id, inventory_id, reactivate_subscription_request) do
    method = [method: :post]
    url = [url: "/users/{user_id}/subscriptions/#{inventory_id}/reactivate"]
    query_params = []
    header_params = []
    body_params = [body: reactivate_subscription_request]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Set a new date to bill a subscription on

  
  """
  def set_subscription_bill_date(user_id, inventory_id, bill_date) do
    method = [method: :put]
    url = [url: "/users/{user_id}/subscriptions/#{inventory_id}/bill-date"]
    query_params = []
    header_params = []
    body_params = [body: bill_date]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Set the payment method to use for a subscription

  May send null to use floating default
  """
  def set_subscription_payment_method(user_id, inventory_id, payment_method_id) do
    method = [method: :put]
    url = [url: "/users/{user_id}/subscriptions/#{inventory_id}/payment-method"]
    query_params = []
    header_params = []
    body_params = [body: payment_method_id]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Set the status of a subscription

  Note that the new status may be blocked if the system is not configured to allow the current status to be changed to the new, to enforce proper flow. The default options for statuses are shown below but may be altered for special use cases
  """
  def set_subscription_status(user_id, inventory_id, status) do
    method = [method: :put]
    url = [url: "/users/{user_id}/subscriptions/#{inventory_id}/status"]
    query_params = []
    header_params = []
    body_params = [body: status]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Set a new subscription plan for a user

  
  """
  def set_user_subscription_plan(user_id, inventory_id, plan_id) do
    method = [method: :put]
    url = [url: "/users/{user_id}/subscriptions/#{inventory_id}/plan"]
    query_params = []
    header_params = []
    body_params = [body: plan_id]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Set a new subscription price for a user

  This new price will be what the user is charged at the begining of each new period. This override is specific to the current subscription and will not carry over if they end and later re-subscribe. It will persist if the plan is changed using the setUserSubscriptionPlan endpoint.
  """
  def set_user_subscription_price(user_id, inventory_id, the_override_details) do
    method = [method: :put]
    url = [url: "/users/{user_id}/subscriptions/#{inventory_id}/price-override"]
    query_params = []
    header_params = []
    body_params = [body: the_override_details]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
