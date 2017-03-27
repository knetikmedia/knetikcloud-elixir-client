defmodule KnetikPlatformAPIDocumentationLatest.Api.UsersGroups do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.UsersGroups.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  def add_member_to_group(unique_name, username) do
    method = [method: :post]
    url = [url: "/users/groups/#{unique_name}/members"]
    query_params = []
    header_params = []
    body_params = [body: username]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

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

  def get_groups_for_user(user_id) do
    method = [method: :get]
    url = [url: "/users/#{user_id}/groups"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

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

  def update_groups(filter_name, filter_unique_name, filter_parent, size, page, order) do
    method = [method: :get]
    url = [url: "/users/groups"]
    query_params = [query: [{:"filterName", filter_name}, {:"filterUniqueName", filter_unique_name}, {:"filterParent", filter_parent}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
