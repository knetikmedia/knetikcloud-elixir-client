defmodule KnetikPlatformAPIDocumentationLatest.Api.GamificationLeveling do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.GamificationLeveling.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Create a level schema

  
  """
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

  @doc """
  Delete a level

  
  """
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

  @doc """
  Retrieve a level

  
  """
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

  @doc """
  Get the list of triggers that can be used to trigger a leveling progress update

  
  """
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

  @doc """
  List and search levels

  Get a list of levels schemas with optional filtering
  """
  def get_levels(filter_name, size, page, order) do
    method = [method: :get]
    url = [url: "/leveling"]
    query_params = [query: [{:"filter_name", filter_name}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Get a user&#39;s progress for a given level schema

  
  """
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

  @doc """
  Get a user&#39;s progress for all level schemas

  Filtering and sorting is based on the LevelingResource object, not the UserLevelingResource that is returned here.
  """
  def get_user_levels(user_id, filter_name, size, page, order) do
    method = [method: :get]
    url = [url: "/users/#{user_id}/leveling"]
    query_params = [query: [{:"filter_name", filter_name}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Update or create a leveling progress record for a user

  If no progress record yet exists for the user, it will be created. Otherwise the provided value will be added to it. May be negative. If progress meets or exceeds the level&#39;s max_value it will be marked as earned and a BRE event will be triggered for the &lt;code&gt;BreAchievementEarnedTrigger&lt;/code&gt;.
  """
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

  @doc """
  Set leveling progress for a user

  If no progress record yet exists for the user, it will be created. Otherwise it will be updated to the provided value. If progress meets or exceeds the level&#39;s max_value it will be marked as earned and a BRE event will be triggered for the &lt;code&gt;BreAchievementEarnedTrigger&lt;/code&gt;.
  """
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

  @doc """
  Update a level

  
  """
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
