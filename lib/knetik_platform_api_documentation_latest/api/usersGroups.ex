defmodule KnetikPlatformAPIDocumentationLatest.Api.UsersGroups do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.UsersGroups.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Adds a new member to the group

  &lt;b&gt;Permissions Needed:&lt;/b&gt; GROUP_ADMIN or self if open
  """
  def add_member_to_group(unique_name, user) do
    method = [method: :post]
    url = [url: "/users/groups/#{unique_name}/members"]
    query_params = []
    header_params = []
    body_params = [body: user]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Adds multiple members to the group

  &lt;b&gt;Permissions Needed:&lt;/b&gt; GROUP_ADMIN
  """
  def add_members_to_group(unique_name, users) do
    method = [method: :post]
    url = [url: "/users/groups/#{unique_name}/members/batch-add"]
    query_params = []
    header_params = []
    body_params = [body: users]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Create a group

  &lt;b&gt;Permissions Needed:&lt;/b&gt; GROUP_ADMIN
  """
  def create_group(group_resource) do
    method = [method: :post]
    url = [url: "/users/groups"]
    query_params = []
    header_params = []
    body_params = [body: group_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Create an group member template

  GroupMember Templates define a type of group member and the properties they have. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  """
  def create_group_member_template(group_member_template_resource) do
    method = [method: :post]
    url = [url: "/users/groups/members/templates"]
    query_params = []
    header_params = []
    body_params = [body: group_member_template_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Create a group template

  Group Templates define a type of group and the properties they have. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  """
  def create_group_template(group_template_resource) do
    method = [method: :post]
    url = [url: "/users/groups/templates"]
    query_params = []
    header_params = []
    body_params = [body: group_template_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Removes a group from the system

  All groups listing this as the parent are also removed and users are in turn removed from this and those groups. This may result in users no longer being in this group&#39;s parent if they were not added to it directly as well. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; GROUP_ADMIN
  """
  def delete_group(unique_name) do
    method = [method: :delete]
    url = [url: "/users/groups/#{unique_name}"]
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
  Delete an group member template

  If cascade &#x3D; &#39;detach&#39;, it will force delete the template even if it&#39;s attached to other objects. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  """
  def delete_group_member_template(id, cascade) do
    method = [method: :delete]
    url = [url: "/users/groups/members/templates/#{id}"]
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
  Delete a group template

  If cascade &#x3D; &#39;detach&#39;, it will force delete the template even if it&#39;s attached to other objects. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  """
  def delete_group_template(id, cascade) do
    method = [method: :delete]
    url = [url: "/users/groups/templates/#{id}"]
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
  Enable or disable notification of group messages

  
  """
  def disable_group_notification(unique_name, user_id, disabled) do
    method = [method: :put]
    url = [url: "/users/groups/{unique_name}/members/#{user_id}/messages/disabled"]
    query_params = []
    header_params = []
    body_params = [body: disabled]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Loads a specific group&#39;s details

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
  def get_group(unique_name) do
    method = [method: :get]
    url = [url: "/users/groups/#{unique_name}"]
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
  Get group ancestors

  Returns a list of ancestor groups in reverse order (parent, then grandparent, etc). &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
  def get_group_ancestors(unique_name) do
    method = [method: :get]
    url = [url: "/users/groups/#{unique_name}/ancestors"]
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
  Get a user from a group

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
  def get_group_member(unique_name, user_id) do
    method = [method: :get]
    url = [url: "/users/groups/{unique_name}/members/#{user_id}"]
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
  Get a single group member template

  &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN or GROUP_ADMIN
  """
  def get_group_member_template(id) do
    method = [method: :get]
    url = [url: "/users/groups/members/templates/#{id}"]
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
  List and search group member templates

  &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN or GROUP_ADMIN
  """
  def get_group_member_templates(size, page, order) do
    method = [method: :get]
    url = [url: "/users/groups/members/templates"]
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
  Lists members of the group

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
  def get_group_members(unique_name, size, page, order) do
    method = [method: :get]
    url = [url: "/users/groups/#{unique_name}/members"]
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
  Get a list of group messages

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
  def get_group_messages(unique_name, size, page) do
    method = [method: :get]
    url = [url: "/users/groups/#{unique_name}/messages"]
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
  Get a single group template

  &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN or GROUP_ADMIN
  """
  def get_group_template(id) do
    method = [method: :get]
    url = [url: "/users/groups/templates/#{id}"]
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
  List and search group templates

  &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN or GROUP_ADMIN
  """
  def get_group_templates(size, page, order) do
    method = [method: :get]
    url = [url: "/users/groups/templates"]
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
  List groups a user is in

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
  def get_groups_for_user(user_id, filter_children) do
    method = [method: :get]
    url = [url: "/users/#{user_id}/groups"]
    query_params = [query: [{:"filter_children", filter_children}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  List and search groups

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
  def list_groups(filter_template, filter_member_count, filter_name, filter_unique_name, filter_parent, filter_status, size, page, order) do
    method = [method: :get]
    url = [url: "/users/groups"]
    query_params = [query: [{:"filter_template", filter_template}, {:"filter_member_count", filter_member_count}, {:"filter_name", filter_name}, {:"filter_unique_name", filter_unique_name}, {:"filter_parent", filter_parent}, {:"filter_status", filter_status}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Send a group message

  
  """
  def post_group_message(unique_name, chat_message_request) do
    method = [method: :post]
    url = [url: "/users/groups/#{unique_name}/messages"]
    query_params = []
    header_params = []
    body_params = [body: chat_message_request]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Removes a user from a group

  &lt;b&gt;Permissions Needed:&lt;/b&gt; GROUP_ADMIN or self if open
  """
  def remove_group_member(unique_name, user_id) do
    method = [method: :delete]
    url = [url: "/users/groups/{unique_name}/members/#{user_id}"]
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
  Update a group

  If adding/removing/changing parent, user membership in group/new parent groups may be modified. The parent being removed will remove members from this sub group unless they were added explicitly to the parent and the new parent will gain members unless they were already a part of it. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; GROUP_ADMIN or admin of the group
  """
  def update_group(unique_name, group_resource) do
    method = [method: :put]
    url = [url: "/users/groups/#{unique_name}"]
    query_params = []
    header_params = []
    body_params = [body: group_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Change a user&#39;s order

  &lt;b&gt;Permissions Needed:&lt;/b&gt; GROUP_ADMIN
  """
  def update_group_member_properties(unique_name, user_id, order) do
    method = [method: :put]
    url = [url: "/users/groups/{unique_name}/members/#{user_id}/order"]
    query_params = []
    header_params = []
    body_params = [body: order]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Change a user&#39;s membership properties

  &lt;b&gt;Permissions Needed:&lt;/b&gt; GROUP_ADMIN
  """
  def update_group_member_properties1(unique_name, user_id, properties) do
    method = [method: :put]
    url = [url: "/users/groups/{unique_name}/members/#{user_id}/properties"]
    query_params = []
    header_params = []
    body_params = [body: properties]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Change a user&#39;s status

  &lt;b&gt;Permissions Needed:&lt;/b&gt; GROUP_ADMIN
  """
  def update_group_member_status(unique_name, user_id, status) do
    method = [method: :put]
    url = [url: "/users/groups/{unique_name}/members/#{user_id}/status"]
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
  Update an group member template

  &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  """
  def update_group_member_template(id, group_member_template_resource) do
    method = [method: :put]
    url = [url: "/users/groups/members/templates/#{id}"]
    query_params = []
    header_params = []
    body_params = [body: group_member_template_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Update a group template

  &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  """
  def update_group_template(id, group_template_resource) do
    method = [method: :put]
    url = [url: "/users/groups/templates/#{id}"]
    query_params = []
    header_params = []
    body_params = [body: group_template_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
