module ApplicationHelper
  def only_host_and_path(input_url)
    url = URI(input_url)

    url.host + url.path
  end
end
