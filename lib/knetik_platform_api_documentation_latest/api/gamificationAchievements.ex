defmodule KnetikPlatformAPIDocumentationLatest.Api.GamificationAchievements do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.GamificationAchievements.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  def create_achievement(achievement) do
    method = [method: :post]
    url = [url: "/achievements"]
    query_params = []
    header_params = []
    body_params = [body: achievement]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def create_achievement_template(template) do
    method = [method: :post]
    url = [url: "/achievements/templates"]
    query_params = []
    header_params = []
    body_params = [body: template]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def delete_achievement(name) do
    method = [method: :delete]
    url = [url: "/achievements/#{name}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def delete_achievement_template(id, cascade) do
    method = [method: :delete]
    url = [url: "/achievements/templates/#{id}"]
    query_params = [query: [{:"cascade", cascade}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_achievement(name) do
    method = [method: :get]
    url = [url: "/achievements/#{name}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_achievement_template(id) do
    method = [method: :get]
    url = [url: "/achievements/templates/#{id}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_achievement_templates(size, page, order) do
    method = [method: :get]
    url = [url: "/achievements/templates"]
    query_params = [query: [{:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_achievement_triggers() do
    method = [method: :get]
    url = [url: "/achievements/triggers"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_achievements(filter_tagset, filter_name, filter_hidden, filter_derived, size, page, order) do
    method = [method: :get]
    url = [url: "/achievements"]
    query_params = [query: [{:"filterTagset", filter_tagset}, {:"filterName", filter_name}, {:"filterHidden", filter_hidden}, {:"filterDerived", filter_derived}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_derived_achievements(name) do
    method = [method: :get]
    url = [url: "/achievements/derived/#{name}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_user_achievement_progress(user_id, achievement_name) do
    method = [method: :get]
    url = [url: "/users/{user_id}/achievements/#{achievement_name}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_user_achievements_progress(user_id, filter_achievement_derived, filter_achievement_tagset, filter_achievement_name, size, page) do
    method = [method: :get]
    url = [url: "/users/#{user_id}/achievements"]
    query_params = [query: [{:"filterAchievementDerived", filter_achievement_derived}, {:"filterAchievementTagset", filter_achievement_tagset}, {:"filterAchievementName", filter_achievement_name}, {:"size", size}, {:"page", page}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_users_achievement_progress(achievement_name, filter_achievement_derived, filter_achievement_tagset, filter_achievement_name, size, page) do
    method = [method: :get]
    url = [url: "/users/achievements/#{achievement_name}"]
    query_params = [query: [{:"filterAchievementDerived", filter_achievement_derived}, {:"filterAchievementTagset", filter_achievement_tagset}, {:"filterAchievementName", filter_achievement_name}, {:"size", size}, {:"page", page}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_users_achievements_progress(filter_achievement_derived, filter_achievement_tagset, filter_achievement_name, size, page) do
    method = [method: :get]
    url = [url: "/users/achievements"]
    query_params = [query: [{:"filterAchievementDerived", filter_achievement_derived}, {:"filterAchievementTagset", filter_achievement_tagset}, {:"filterAchievementName", filter_achievement_name}, {:"size", size}, {:"page", page}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def increment_achievement_progress(user_id, achievement_name, progress) do
    method = [method: :post]
    url = [url: "/users/{user_id}/achievements/#{achievement_name}/progress"]
    query_params = []
    header_params = []
    body_params = [body: progress]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def set_achievement_progress(user_id, achievement_name, progress) do
    method = [method: :put]
    url = [url: "/users/{user_id}/achievements/#{achievement_name}/progress"]
    query_params = []
    header_params = []
    body_params = [body: progress]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def update_achievement(name, achievement) do
    method = [method: :put]
    url = [url: "/achievements/#{name}"]
    query_params = []
    header_params = []
    body_params = [body: achievement]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def update_achievement_template(id, template) do
    method = [method: :put]
    url = [url: "/achievements/templates/#{id}"]
    query_params = []
    header_params = []
    body_params = [body: template]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
