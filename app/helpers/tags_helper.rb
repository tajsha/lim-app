module TagsHelper
  def html_safe_content(content)
    content_array = JSON.parse(content).reject { |c| c.empty? }
    content_array.present? ? content_array.join('</br>').html_safe : []
  end
end
