defmodule KnetikPlatformAPIDocumentationLatest.Api.GamificationAchievements do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.GamificationAchievements.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://devsandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Create a new achievement definition

  If the definition contains a trigger event name, a BRE rule is created, so that tracking logic is executed when the triggering event occurs. If no trigger event name is specified, the user&#39;s achievement status must manually be updated via the API.
  """
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

  @doc """
  Create an achievement template

  Achievement templates define a type of achievement and the properties they have
  """
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

  @doc """
  Delete an achievement definition

  Will also disable the associated generated rule, if any.
  """
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

  @doc """
  Delete an achievement template

  If cascade &#x3D; &#39;detach&#39;, it will force delete the template even if it&#39;s attached to other objects
  """
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

  @doc """
  Get a single achievement definition

  
  """
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

  @doc """
  Get a single achievement template

  
  """
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

  @doc """
  List and search achievement templates

  
  """
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

  @doc """
  Get the list of triggers that can be used to trigger an achievement progress update

  
  """
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

  @doc """
  Get all achievement definitions in the system

  
  """
  def get_achievements(filter_tagset, filter_name, filter_hidden, size, page, order, filter_derived) do
    method = [method: :get]
    url = [url: "/achievements"]
    query_params = [query: [{:"filter_tagset", filter_tagset}, {:"filter_name", filter_name}, {:"filter_hidden", filter_hidden}, {:"size", size}, {:"page", page}, {:"order", order}, {:"filter_derived", filter_derived}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Get a list of derived achievements

  Used by other services that depend on achievements
  """
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

  @doc """
  Retrieve progress on a given achievement for a given user

  Assets will not be filled in on the resources returned. Use &#39;Get a single poll&#39; to retrieve the full resource with assets for a given item as needed.
  """
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

  @doc """
  Retrieve progress on achievements for a given user

  Assets will not be filled in on the resources returned. Use &#39;Get a single poll&#39; to retrieve the full resource with assets for a given item as needed.
  """
  def get_user_achievements_progress(user_id, filter_achievement_derived, filter_achievement_tagset, filter_achievement_name, size, page) do
    method = [method: :get]
    url = [url: "/users/#{user_id}/achievements"]
    query_params = [query: [{:"filter_achievement_derived", filter_achievement_derived}, {:"filter_achievement_tagset", filter_achievement_tagset}, {:"filter_achievement_name", filter_achievement_name}, {:"size", size}, {:"page", page}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Retrieve progress on a given achievement for all users

  Assets will not be filled in on the resources returned. Use &#39;Get single achievement progress for user&#39; to retrieve the full resource with assets for a given user as needed.
  """
  def get_users_achievement_progress(achievement_name, filter_achievement_derived, filter_achievement_tagset, filter_achievement_name, size, page) do
    method = [method: :get]
    url = [url: "/users/achievements/#{achievement_name}"]
    query_params = [query: [{:"filter_achievement_derived", filter_achievement_derived}, {:"filter_achievement_tagset", filter_achievement_tagset}, {:"filter_achievement_name", filter_achievement_name}, {:"size", size}, {:"page", page}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Retrieve progress on achievements for all users

  Assets will not be filled in on the resources returned. Use &#39;Get single achievement progress for user&#39; to retrieve the full resource with assets for a given user as needed.
  """
  def get_users_achievements_progress(filter_achievement_derived, filter_achievement_tagset, filter_achievement_name, size, page) do
    method = [method: :get]
    url = [url: "/users/achievements"]
    query_params = [query: [{:"filter_achievement_derived", filter_achievement_derived}, {:"filter_achievement_tagset", filter_achievement_tagset}, {:"filter_achievement_name", filter_achievement_name}, {:"size", size}, {:"page", page}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Increment an achievement progress record for a user

  If no progress record yet exists for the user, it will be created. Otherwise it will be updated and the provided value added to the existing progress. May be negative. If progress meets or exceeds the achievement&#39;s max_value it will be marked as earned and a BRE event will be triggered for the &lt;code&gt;BreAchievementEarnedTrigger&lt;/code&gt;.
  """
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

  @doc """
  Set an achievement progress record for a user

  If no progress record yet exists for the user, it will be created. Otherwise it will be updated and progress set to the provided value. If progress meets or exceeds the achievement&#39;s max_value it will be marked as earned and a BRE event will be triggered for the &lt;code&gt;BreAchievementEarnedTrigger&lt;/code&gt;.
  """
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

  @doc """
  Update an achievement definition

  The existing generated rule, if any, will be deleted. A new rule will be created if a trigger event name is specified in the new version.
  """
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

  @doc """
  Update an achievement template

  
  """
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
