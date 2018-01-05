defmodule KnetikPlatformAPIDocumentationLatest.Api.Users do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.Users.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://devsandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Add a tag to a user

  
  """
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

  @doc """
  Create a user template

  User Templates define a type of user and the properties they have
  """
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

  @doc """
  Delete a user template

  If cascade &#x3D; &#39;detach&#39;, it will force delete the template even if it&#39;s attached to other objects
  """
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

  @doc """
  Get a single user

  Additional private info is included as USERS_ADMIN
  """
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

  @doc """
  List tags for a user

  
  """
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

  @doc """
  Get a single user template

  
  """
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

  @doc """
  List and search user templates

  
  """
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

  @doc """
  List and search users

  Additional private info is included as USERS_ADMIN
  """
  def get_users(filter_displayname, filter_email, filter_firstname, filter_fullname, filter_lastname, filter_username, filter_tag, filter_group, filter_role, filter_last_activity, filter_id_list, filter_search, size, page, order) do
    method = [method: :get]
    url = [url: "/users"]
    query_params = [query: [{:"filter_displayname", filter_displayname}, {:"filter_email", filter_email}, {:"filter_firstname", filter_firstname}, {:"filter_fullname", filter_fullname}, {:"filter_lastname", filter_lastname}, {:"filter_username", filter_username}, {:"filter_tag", filter_tag}, {:"filter_group", filter_group}, {:"filter_role", filter_role}, {:"filter_last_activity", filter_last_activity}, {:"filter_id_list", filter_id_list}, {:"filter_search", filter_search}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Choose a new password after a reset

  Finish resetting a user&#39;s password using the secret provided from the password-reset endpoint.  Password should be in plain text and will be encrypted on receipt. Use SSL for security.
  """
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

  @doc """
  Register a new user

  Password should be in plain text and will be encrypted on receipt. Use SSL for security
  """
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

  @doc """
  Remove a tag from a user

  
  """
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

  @doc """
  Set a user&#39;s password

  Password should be in plain text and will be encrypted on receipt. Use SSL for security.
  """
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

  @doc """
  Reset a user&#39;s password

  A reset code will be generated and a &#39;forgot_password&#39; BRE event will be fired with that code.  The default system rule will send an email to the selected user if an email service has been setup. You can modify that rule in BRE to send an SMS instead or any other type of notification as you see fit
  """
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

  @doc """
  Reset a user&#39;s password without user id

  A reset code will be generated and a &#39;forgot_password&#39; BRE event will be fired with that code.  The default system rule will send an email to the selected user if an email service has been setup. You can modify that rule in BRE to send an SMS instead or any other type of notification as you see fit.  Must submit their email, username, or mobile phone number
  """
  def submit_password_reset(password_reset) do
    method = [method: :post]
    url = [url: "/users/password-reset"]
    query_params = []
    header_params = []
    body_params = [body: password_reset]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Update a user

  Password will not be edited on this endpoint, use password specific endpoints.
  """
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

  @doc """
  Update a user template

  
  """
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
