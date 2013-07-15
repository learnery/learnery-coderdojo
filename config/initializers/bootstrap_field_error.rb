# from http://stackoverflow.com/questions/7341545/rails-actionviewbase-field-error-proc-moving-up-the-dom-tree
# fix display of errors in form to go well with bootstrap
ActionView::Base.field_error_proc = Proc.new do |html_tag, object|
  html = Nokogiri::HTML::DocumentFragment.parse(html_tag)
  html = html.at_css("input") || html.at_css("textarea")
  unless html.nil?
    css_class = html['class'] || ""
    html['class'] = css_class.split.push("error").join(' ')
    html_tag = html.to_s + "<span class='help-inline'>" + object.error_message.join(". ") + "</span>"
  end
  html_tag.html_safe
end
