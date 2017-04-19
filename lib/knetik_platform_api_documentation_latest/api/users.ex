defmodule KnetikPlatformAPIDocumentationLatest.Api.Users do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Users.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  def add_user_tag(user_id, tag) do
    method = [method: :post]
    url = [url: "/users/#{user_id}/tags"]
    query_params = []
    header_params = []
    body_params = [body: tag]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def create_user_template(user_template_resource) do
    method = [method: :post]
    url = [url: "/users/templates"]
    query_params = []
    header_params = []
    body_params = [body: user_template_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def delete_user_template(id, cascade) do
    method = [method: :delete]
    url = [url: "/users/templates/#{id}"]
    query_params = [query: [{:"cascade", cascade}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_user(id) do
    method = [method: :get]
    url = [url: "/users/#{id}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_user_tags(user_id) do
    method = [method: :get]
    url = [url: "/users/#{user_id}/tags"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_user_template(id) do
    method = [method: :get]
    url = [url: "/users/templates/#{id}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_user_templates(size, page, order) do
    method = [method: :get]
    url = [url: "/users/templates"]
    query_params = [query: [{:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_users(filter_displayname, filter_email, filter_firstname, filter_fullname, filter_lastname, filter_username, filter_tag, filter_group, filter_role, filter_search, size, page, order) do
    method = [method: :get]
    url = [url: "/users"]
    query_params = [query: [{:"filterDisplayname", filter_displayname}, {:"filterEmail", filter_email}, {:"filterFirstname", filter_firstname}, {:"filterFullname", filter_fullname}, {:"filterLastname", filter_lastname}, {:"filterUsername", filter_username}, {:"filterTag", filter_tag}, {:"filterGroup", filter_group}, {:"filterRole", filter_role}, {:"filterSearch", filter_search}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def password_reset(id, new_password_request) do
    method = [method: :put]
    url = [url: "/users/#{id}/password-reset"]
    query_params = []
    header_params = []
    body_params = [body: new_password_request]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def register_user(user_resource) do
    method = [method: :post]
    url = [url: "/users"]
    query_params = []
    header_params = []
    body_params = [body: user_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def remove_user_tag(user_id, tag) do
    method = [method: :delete]
    url = [url: "/users/{user_id}/tags/#{tag}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def set_password(id, password) do
    method = [method: :put]
    url = [url: "/users/#{id}/password"]
    query_params = []
    header_params = []
    body_params = [body: password]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def start_password_reset(id) do
    method = [method: :post]
    url = [url: "/users/#{id}/password-reset"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def update_user(id, user_resource) do
    method = [method: :put]
    url = [url: "/users/#{id}"]
    query_params = []
    header_params = []
    body_params = [body: user_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def update_user_template(id, user_template_resource) do
    method = [method: :put]
    url = [url: "/users/templates/#{id}"]
    query_params = []
    header_params = []
    body_params = [body: user_template_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
