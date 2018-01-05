defmodule KnetikPlatformAPIDocumentationLatest.Api.MediaVideos do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.MediaVideos.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://devsandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Adds a user to a video&#39;s whitelist

  Whitelisted users can view video regardless of privacy setting.
  """
  def add_user_to_video_whitelist(id, user_id) do
    method = [method: :post]
    url = [url: "/media/videos/#{id}/whitelist"]
    query_params = []
    header_params = []
    body_params = [body: user_id]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Adds a new video in the system

  
  """
  def add_video(video_resource) do
    method = [method: :post]
    url = [url: "/media/videos"]
    query_params = []
    header_params = []
    body_params = [body: video_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Add a new video comment

  
  """
  def add_video_comment(video_id, comment_resource) do
    method = [method: :post]
    url = [url: "/media/videos/#{video_id}/comments"]
    query_params = []
    header_params = []
    body_params = [body: comment_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Adds a contributor to a video

  
  """
  def add_video_contributor(video_id, contribution_resource) do
    method = [method: :post]
    url = [url: "/media/videos/#{video_id}/contributors"]
    query_params = []
    header_params = []
    body_params = [body: contribution_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Add a new flag

  
  """
  def add_video_flag(video_id, reason) do
    method = [method: :post]
    url = [url: "/media/videos/#{video_id}/moderation"]
    query_params = []
    header_params = []
    body_params = [body: reason]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Adds one or more existing videos as related to this one

  
  """
  def add_video_relationships(video_id, video_relationship_resource) do
    method = [method: :post]
    url = [url: "/media/videos/#{video_id}/related"]
    query_params = []
    header_params = []
    body_params = [body: video_relationship_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Create a video disposition

  
  """
  def create_video_disposition(video_id, disposition_resource) do
    method = [method: :post]
    url = [url: "/media/videos/#{video_id}/dispositions"]
    query_params = []
    header_params = []
    body_params = [body: disposition_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Create a video template

  Video Templates define a type of video and the properties they have
  """
  def create_video_template(video_template_resource) do
    method = [method: :post]
    url = [url: "/media/videos/templates"]
    query_params = []
    header_params = []
    body_params = [body: video_template_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Deletes a video from the system if no resources are attached to it

  
  """
  def delete_video(id) do
    method = [method: :delete]
    url = [url: "/media/videos/#{id}"]
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
  Delete a video comment

  
  """
  def delete_video_comment(video_id, id) do
    method = [method: :delete]
    url = [url: "/media/videos/{video_id}/comments/#{id}"]
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
  Delete a video disposition

  
  """
  def delete_video_disposition(disposition_id) do
    method = [method: :delete]
    url = [url: "/media/videos/{video_id}/dispositions/#{disposition_id}"]
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
  Delete a flag

  
  """
  def delete_video_flag(video_id) do
    method = [method: :delete]
    url = [url: "/media/videos/#{video_id}/moderation"]
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
  Delete a video&#39;s relationship

  
  """
  def delete_video_relationship(video_id, id) do
    method = [method: :delete]
    url = [url: "/media/videos/{video_id}/related/#{id}"]
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
  Delete a video template

  If cascade &#x3D; &#39;detach&#39;, it will force delete the template even if it&#39;s attached to other objects
  """
  def delete_video_template(id, cascade) do
    method = [method: :delete]
    url = [url: "/media/videos/templates/#{id}"]
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
  Get user videos

  
  """
  def get_user_videos(user_id, exclude_flagged, size, page) do
    method = [method: :get]
    url = [url: "/users/#{user_id}/videos"]
    query_params = [query: [{:"exclude_flagged", exclude_flagged}, {:"size", size}, {:"page", page}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Loads a specific video details

  
  """
  def get_video(id) do
    method = [method: :get]
    url = [url: "/media/videos/#{id}"]
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
  Returns a page of comments for a video

  
  """
  def get_video_comments(video_id, size, page) do
    method = [method: :get]
    url = [url: "/media/videos/#{video_id}/comments"]
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
  Returns a page of dispositions for a video

  
  """
  def get_video_dispositions(video_id, size, page) do
    method = [method: :get]
    url = [url: "/media/videos/#{video_id}/dispositions"]
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
  Returns a page of video relationships

  
  """
  def get_video_relationships(video_id, size, page) do
    method = [method: :get]
    url = [url: "/media/videos/#{video_id}/related"]
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
  Get a single video template

  
  """
  def get_video_template(id) do
    method = [method: :get]
    url = [url: "/media/videos/templates/#{id}"]
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
  List and search video templates

  
  """
  def get_video_templates(size, page, order) do
    method = [method: :get]
    url = [url: "/media/videos/templates"]
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
  Search videos using the documented filters

  
  """
  def get_videos(exclude_flagged, filter_videos_by_uploader, filter_category, filter_tagset, filter_videos_by_name, filter_videos_by_contributor, filter_videos_by_author, filter_has_author, filter_has_uploader, filter_related_to, filter_friends, filter_disposition, size, page, order) do
    method = [method: :get]
    url = [url: "/media/videos"]
    query_params = [query: [{:"exclude_flagged", exclude_flagged}, {:"filter_videos_by_uploader", filter_videos_by_uploader}, {:"filter_category", filter_category}, {:"filter_tagset", filter_tagset}, {:"filter_videos_by_name", filter_videos_by_name}, {:"filter_videos_by_contributor", filter_videos_by_contributor}, {:"filter_videos_by_author", filter_videos_by_author}, {:"filter_has_author", filter_has_author}, {:"filter_has_uploader", filter_has_uploader}, {:"filter_related_to", filter_related_to}, {:"filter_friends", filter_friends}, {:"filter_disposition", filter_disposition}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Removes a user from a video&#39;s whitelist

  Remove the user with the id given in the path from the whitelist of users that can view this video regardless of privacy setting.
  """
  def remove_user_from_video_whitelist(video_id, id) do
    method = [method: :delete]
    url = [url: "/media/videos/{video_id}/whitelist/#{id}"]
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
  Removes a contributor from a video

  
  """
  def remove_video_contributor(video_id, id) do
    method = [method: :delete]
    url = [url: "/media/videos/{video_id}/contributors/#{id}"]
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
  Modifies a video&#39;s details

  
  """
  def update_video(id, video_resource) do
    method = [method: :put]
    url = [url: "/media/videos/#{id}"]
    query_params = []
    header_params = []
    body_params = [body: video_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Update a video comment

  
  """
  def update_video_comment(video_id, id, content) do
    method = [method: :put]
    url = [url: "/media/videos/{video_id}/comments/#{id}/content"]
    query_params = []
    header_params = []
    body_params = [body: content]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Update a video&#39;s relationship details

  
  """
  def update_video_relationship(video_id, relationship_id, details) do
    method = [method: :put]
    url = [url: "/media/videos/{video_id}/related/#{id}/relationship_details"]
    query_params = []
    header_params = []
    body_params = [body: details]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Update a video template

  
  """
  def update_video_template(id, video_template_resource) do
    method = [method: :put]
    url = [url: "/media/videos/templates/#{id}"]
    query_params = []
    header_params = []
    body_params = [body: video_template_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Increment a video&#39;s view count

  
  """
  def view_video(id) do
    method = [method: :post]
    url = [url: "/media/videos/#{id}/views"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
