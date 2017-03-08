defmodule KnetikPlatformAPIDocumentationLatest.Api.UsersSubscriptions do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.UsersSubscriptions.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

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
end
