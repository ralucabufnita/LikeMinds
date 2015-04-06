module DeviseHelper

  def devise_error_messages!
    return "" if resource.errors.empty?
    puts(resource.errors.full_messages.map)
    flash[:error] = resource.errors.full_messages.map { |msg| content_tag(:p, msg) }.join
    flash[:err] = I18n.t("errors.messages.not_saved",
                      :count => resource.errors.count,
                      :resource => resource.class.model_name.human.downcase)
    html = <<-HTML


      <div class="alert alert-danger alert-dismissable" role="alert">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;
        </span></button>
        <i class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></i>
                              #{sentence}
                              #{messages}
      </div>
    HTML

    html.html_safe
  end

  def devise_error_messages?
    resource.errors.empty? ? false : true
  end

end