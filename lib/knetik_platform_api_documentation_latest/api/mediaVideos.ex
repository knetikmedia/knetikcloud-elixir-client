defmodule KnetikPlatformAPIDocumentationLatest.Api.MediaVideos do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.MediaVideos.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

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

  def get_user_videos(user_id, exclude_flagged, size, page) do
    method = [method: :get]
    url = [url: "/users/#{user_id}/videos"]
    query_params = [query: [{:"excludeFlagged", exclude_flagged}, {:"size", size}, {:"page", page}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

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

  def get_videos(exclude_flagged, filter_videos_by_uploader, filter_category, filter_tagset, filter_videos_by_name, filter_videos_by_contributor, filter_videos_by_author, filter_has_author, filter_has_uploader, filter_related_to, filter_friends, filter_disposition, size, page, order) do
    method = [method: :get]
    url = [url: "/media/videos"]
    query_params = [query: [{:"excludeFlagged", exclude_flagged}, {:"filterVideosByUploader", filter_videos_by_uploader}, {:"filterCategory", filter_category}, {:"filterTagset", filter_tagset}, {:"filterVideosByName", filter_videos_by_name}, {:"filterVideosByContributor", filter_videos_by_contributor}, {:"filterVideosByAuthor", filter_videos_by_author}, {:"filterHasAuthor", filter_has_author}, {:"filterHasUploader", filter_has_uploader}, {:"filterRelatedTo", filter_related_to}, {:"filterFriends", filter_friends}, {:"filterDisposition", filter_disposition}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

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
