defmodule KnetikPlatformAPIDocumentationLatest.Api.Users_Inventory do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Users_Inventory.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://jsapi-integration.us-east-1.elasticbeanstalk.com"
  plug Tesla.Middleware.JSON

  @doc """
  Adds an item to the user inventory

  The inventory is fulfilled asynchronously UNLESS the invoice is explicitely skipped. Depending on the use case, it might require the client to verify that the entitlement was added after the fact or configure a BRE rule to get a notification in real time. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; INVENTORY_ADMIN
  """
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

  @doc """
  Check for access to an item without consuming

  Useful for pre-check and accounts for all various buisness rules. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; INVENTORY_ADMIN or owner
  """
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

  @doc """
  Create an entitlement item

  &lt;b&gt;Permissions Needed:&lt;/b&gt; INVENTORY_ADMIN
  """
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

  @doc """
  Create an entitlement template

  Entitlement templates define a type of entitlement and the properties they have. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  """
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

  @doc """
  Delete an entitlement item

  &lt;b&gt;Permissions Needed:&lt;/b&gt; INVENTORY_ADMIN
  """
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

  @doc """
  Delete an entitlement template

  If cascade &#x3D; &#39;detach&#39;, it will force delete the template even if it&#39;s attached to other objects. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  """
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

  @doc """
  Get a single entitlement item

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
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

  @doc """
  List and search entitlement items

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
  def get_entitlement_items(filter_template, size, page, order) do
    method = [method: :get]
    url = [url: "/entitlements"]
    query_params = [query: [{:"filter_template", filter_template}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Get a single entitlement template

  &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN or ACHIEVEMENTS_ADMIN
  """
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

  @doc """
  List and search entitlement templates

  &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN or ACHIEVEMENTS_ADMIN
  """
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

  @doc """
  List the user inventory entries for a given user

  &lt;b&gt;Permissions Needed:&lt;/b&gt; INVENTORY_ADMIN or owner
  """
  def get_user_inventories(id, inactive, size, page, filter_item_name, filter_item_id, filter_username, filter_group, filter_date) do
    method = [method: :get]
    url = [url: "/users/#{id}/inventory"]
    query_params = [query: [{:"inactive", inactive}, {:"size", size}, {:"page", page}, {:"filter_item_name", filter_item_name}, {:"filter_item_id", filter_item_id}, {:"filter_username", filter_username}, {:"filter_group", filter_group}, {:"filter_date", filter_date}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Get an inventory entry

  &lt;b&gt;Permissions Needed:&lt;/b&gt; INVENTORY_ADMIN
  """
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

  @doc """
  List the log entries for this inventory entry

  &lt;b&gt;Permissions Needed:&lt;/b&gt; INVENTORY_ADMIN or owner
  """
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

  @doc """
  List the user inventory entries for all users

  &lt;b&gt;Permissions Needed:&lt;/b&gt; INVENTORY_ADMIN
  """
  def get_users_inventory(inactive, size, page, filter_item_name, filter_item_id, filter_username, filter_group, filter_date) do
    method = [method: :get]
    url = [url: "/inventories"]
    query_params = [query: [{:"inactive", inactive}, {:"size", size}, {:"page", page}, {:"filter_item_name", filter_item_name}, {:"filter_item_id", filter_item_id}, {:"filter_username", filter_username}, {:"filter_group", filter_group}, {:"filter_date", filter_date}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Grant an entitlement

  &lt;b&gt;Permissions Needed:&lt;/b&gt; INVENTORY_ADMIN
  """
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

  @doc """
  Update an entitlement item

  &lt;b&gt;Permissions Needed:&lt;/b&gt; INVENTORY_ADMIN
  """
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

  @doc """
  Update an entitlement template

  &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  """
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

  @doc """
  Set the behavior data for an inventory entry

  &lt;b&gt;Permissions Needed:&lt;/b&gt; INVENTORY_ADMIN
  """
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

  @doc """
  Set the expiration date

  Will change the current grace period for a subscription but not the bill date (possibly even ending before having the chance to re-bill). &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; INVENTORY_ADMIN
  """
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

  @doc """
  Set the status for an inventory entry

  &lt;b&gt;Permissions Needed:&lt;/b&gt; INVENTORY_ADMIN
  """
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

  @doc """
  Use an item

  &lt;b&gt;Permissions Needed:&lt;/b&gt; INVENTORY_ADMIN or owner
  """
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
