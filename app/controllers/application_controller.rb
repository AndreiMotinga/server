# ckeditor relies on ApplicationController in order to render layout
# duplicate code here to make it work
# more https://github.com/jemcode/administrate-field-ckeditor/issues/13
class ApplicationController < ActionController::Base
  include DeviseTokenAuth::Concerns::SetUserByToken
  before_action :skip_cookies
  def skip_cookies
    request.session_options[:skip] = true
  end
end
