defmodule KnetikPlatformAPIDocumentationLatest.Api.MediaArtists do
  @moduledoc """
  Documentation for KnetikPlatformAPIDocumentationLatest.Api.MediaArtists.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sandbox.knetikcloud.com"
  plug Tesla.Middleware.JSON

  @doc """
  Adds a new artist in the system

  Adds a new artist in the system. Use specific media contributions endpoint to add contributions. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
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

  @doc """
  Create an artist template

  Artist Templates define a type of artist and the properties they have. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  """
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

  @doc """
  Removes an artist from the system IF no resources are attached to it

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ARTISTS_ADMIN
  """
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

  @doc """
  Delete an artist template

  If cascade &#x3D; &#39;detach&#39;, it will force delete the template even if it&#39;s attached to other objects. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  """
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

  @doc """
  Loads a specific artist details

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
  def get_artist(id, show_contributions) do
    method = [method: :get]
    url = [url: "/media/artists/#{id}"]
    query_params = [query: [{:"show_contributions", show_contributions}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Get a single artist template

  &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN or ARTISTS_ADMIN
  """
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

  @doc """
  List and search artist templates

  &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN or ARTISTS_ADMIN
  """
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

  @doc """
  Search for artists

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  """
  def get_artists(filter_artists_by_name, size, page, order) do
    method = [method: :get]
    url = [url: "/media/artists"]
    query_params = [query: [{:"filter_artists_by_name", filter_artists_by_name}, {:"size", size}, {:"page", page}, {:"order", order}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Modifies an artist details

  &lt;b&gt;Permissions Needed:&lt;/b&gt; ARTISTS_ADMIN
  """
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

  @doc """
  Update an artist template

  &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  """
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
