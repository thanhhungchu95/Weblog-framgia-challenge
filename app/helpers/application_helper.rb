module ApplicationHelper
  def weblog_full_title(page_title = '')
    base_title = 'Weblog - A blogger application'
    if page_title.empty?
      base_title
    else
      page_title + ' | ' + base_title
    end
  end
end
