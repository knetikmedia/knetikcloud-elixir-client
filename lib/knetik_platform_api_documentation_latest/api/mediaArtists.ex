defmodule KnetikPlatformAPIDocumentationLatest.Api.MediaArtists do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.MediaArtists.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  def add_artist(artist_resource) do
    method = [method: :post]
    url = [url: "/media/artists"]
    query_params = []
    header_params = []
    body_params = [body: artist_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def create_artist_template(artist_template_resource) do
    method = [method: :post]
    url = [url: "/media/artists/templates"]
    query_params = []
    header_params = []
    body_params = [body: artist_template_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def delete_artist(id) do
    method = [method: :delete]
    url = [url: "/media/artists/#{id}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def delete_artist_template(id, cascade) do
    method = [method: :delete]
    url = [url: "/media/artists/templates/#{id}"]
    query_params = [query: [{:"cascade", cascade}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_artist(id, show_contributions) do
    method = [method: :get]
    url = [url: "/media/artists/#{id}"]
    query_params = [query: [{:"showContributions", show_contributions}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_artist_template(id) do
    method = [method: :get]
    url = [url: "/media/artists/templates/#{id}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_artist_templates(size, page, order) do
    method = [method: :get]
    url = [url: "/media/artists/templates"]
    query_params = [query: [{:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_artists(filter_artists_by_name, size, page, order) do
    method = [method: :get]
    url = [url: "/media/artists"]
    query_params = [query: [{:"filterArtistsByName", filter_artists_by_name}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def update_artist(id, artist_resource) do
    method = [method: :put]
    url = [url: "/media/artists/#{id}"]
    query_params = []
    header_params = []
    body_params = [body: artist_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def update_artist_template(id, artist_template_resource) do
    method = [method: :put]
    url = [url: "/media/artists/templates/#{id}"]
    query_params = []
    header_params = []
    body_params = [body: artist_template_resource]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
