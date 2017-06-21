defmodule KnetikPlatformAPIDocumentationLatest.Api.UsersInventory do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.UsersInventory.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  def add_item_to_user_inventory(id, user_inventory_add_request) do
    method = [method: :post]
    url = [url: "/users/#{id}/inventory"]
    query_params = []
    header_params = []
    body_params = [body: user_inventory_add_request]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def check_user_entitlement_item(user_id, item_id, sku) do
    method = [method: :get]
    url = [url: "/users/{user_id}/entitlements/#{item_id}/check"]
    query_params = [query: [{:"sku", sku}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def create_entitlement_item(cascade, entitlement_item) do
    method = [method: :post]
    url = [url: "/entitlements"]
    query_params = [query: [{:"cascade", cascade}]]
    header_params = []
    body_params = [body: entitlement_item]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def create_entitlement_template(template) do
    method = [method: :post]
    url = [url: "/entitlements/templates"]
    query_params = []
    header_params = []
    body_params = [body: template]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def delete_entitlement_item(entitlement_id) do
    method = [method: :delete]
    url = [url: "/entitlements/#{entitlement_id}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def delete_entitlement_template(id, cascade) do
    method = [method: :delete]
    url = [url: "/entitlements/templates/#{id}"]
    query_params = [query: [{:"cascade", cascade}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_entitlement_item(entitlement_id) do
    method = [method: :get]
    url = [url: "/entitlements/#{entitlement_id}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_entitlement_items(size, page, order) do
    method = [method: :get]
    url = [url: "/entitlements"]
    query_params = [query: [{:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_entitlement_template(id) do
    method = [method: :get]
    url = [url: "/entitlements/templates/#{id}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_entitlement_templates(size, page, order) do
    method = [method: :get]
    url = [url: "/entitlements/templates"]
    query_params = [query: [{:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_user_inventories(id, inactive, size, page, filter_item_name, filter_item_id, filter_username, filter_group, filter_date) do
    method = [method: :get]
    url = [url: "/users/#{id}/inventory"]
    query_params = [query: [{:"inactive", inactive}, {:"size", size}, {:"page", page}, {:"filterItemName", filter_item_name}, {:"filterItemId", filter_item_id}, {:"filterUsername", filter_username}, {:"filterGroup", filter_group}, {:"filterDate", filter_date}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_user_inventory(user_id, id) do
    method = [method: :get]
    url = [url: "/users/{user_id}/inventory/#{id}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_user_inventory_log(user_id, id, size, page) do
    method = [method: :get]
    url = [url: "/users/{user_id}/inventory/#{id}/log"]
    query_params = [query: [{:"size", size}, {:"page", page}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_users_inventory(inactive, size, page, filter_item_name, filter_item_id, filter_username, filter_group, filter_date) do
    method = [method: :get]
    url = [url: "/inventories"]
    query_params = [query: [{:"inactive", inactive}, {:"size", size}, {:"page", page}, {:"filterItemName", filter_item_name}, {:"filterItemId", filter_item_id}, {:"filterUsername", filter_username}, {:"filterGroup", filter_group}, {:"filterDate", filter_date}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def grant_user_entitlement(user_id, grant_request) do
    method = [method: :post]
    url = [url: "/users/#{user_id}/entitlements"]
    query_params = []
    header_params = []
    body_params = [body: grant_request]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def update_entitlement_item(entitlement_id, cascade, entitlement_item) do
    method = [method: :put]
    url = [url: "/entitlements/#{entitlement_id}"]
    query_params = [query: [{:"cascade", cascade}]]
    header_params = []
    body_params = [body: entitlement_item]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def update_entitlement_template(id, template) do
    method = [method: :put]
    url = [url: "/entitlements/templates/#{id}"]
    query_params = []
    header_params = []
    body_params = [body: template]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def update_user_inventory_behavior_data(user_id, id, data) do
    method = [method: :put]
    url = [url: "/users/{user_id}/inventory/#{id}/behavior-data"]
    query_params = []
    header_params = []
    body_params = [body: data]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def update_user_inventory_expires(user_id, id, timestamp) do
    method = [method: :put]
    url = [url: "/users/{user_id}/inventory/#{id}/expires"]
    query_params = []
    header_params = []
    body_params = [body: timestamp]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def update_user_inventory_status(user_id, id, inventory_status) do
    method = [method: :put]
    url = [url: "/users/{user_id}/inventory/#{id}/status"]
    query_params = []
    header_params = []
    body_params = [body: inventory_status]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def use_user_entitlement_item(user_id, item_id, sku, info) do
    method = [method: :post]
    url = [url: "/users/{user_id}/entitlements/#{item_id}/use"]
    query_params = [query: [{:"sku", sku}, {:"info", info}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
