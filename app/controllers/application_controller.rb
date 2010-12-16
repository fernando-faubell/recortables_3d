class ApplicationController < ActionController::Base
  protect_from_forgery


  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  before_filter :set_lang

  def set_lang
    request.user_preferred_languages
    available = %w{es en}
    I18n.locale = request.preferred_language_from(available)
  end

end
