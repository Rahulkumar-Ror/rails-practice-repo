class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exceptions
  before_action :set_paper_trail_whodunnit

  def history_for_paper_trail
    "Public user"
  end
end
