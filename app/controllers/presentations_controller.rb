class PresentationsController < ApplicationController
  def index
  	@engineers = Engineer.includes(:projects)

  end
end