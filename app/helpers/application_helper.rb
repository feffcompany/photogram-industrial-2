module ApplicationHelper
  def pretty_url(input_url)
    url = URI(input_url)

    url.host + url.path
  end
end
