defmodule KnetikPlatformAPIDocumentationLatest.Api.GamificationLeveling do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.GamificationLeveling.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  def create_level(level) do
    method = [method: :post]
    url = [url: "/leveling"]
    query_params = []
    header_params = []
    body_params = [body: level]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def delete_level(name) do
    method = [method: :delete]
    url = [url: "/leveling/#{name}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_level(name) do
    method = [method: :get]
    url = [url: "/leveling/#{name}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_level_triggers() do
    method = [method: :get]
    url = [url: "/leveling/triggers"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_levels(filter_name, size, page, order) do
    method = [method: :get]
    url = [url: "/leveling"]
    query_params = [query: [{:"filterName", filter_name}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_user_level(user_id, name) do
    method = [method: :get]
    url = [url: "/users/{user_id}/leveling/#{name}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_user_levels(user_id, filter_name, size, page, order) do
    method = [method: :get]
    url = [url: "/users/#{user_id}/leveling"]
    query_params = [query: [{:"filterName", filter_name}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def increment_progress(user_id, name, progress) do
    method = [method: :post]
    url = [url: "/users/{user_id}/leveling/#{name}/progress"]
    query_params = []
    header_params = []
    body_params = [body: progress]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def set_progress(user_id, name, progress) do
    method = [method: :put]
    url = [url: "/users/{user_id}/leveling/#{name}/progress"]
    query_params = []
    header_params = []
    body_params = [body: progress]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def update_level(name, new_level) do
    method = [method: :put]
    url = [url: "/leveling/#{name}"]
    query_params = []
    header_params = []
    body_params = [body: new_level]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
