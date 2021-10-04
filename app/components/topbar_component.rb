# frozen_string_literal: true

class TopbarComponent < ViewComponent::Base

  include Heroicon::ApplicationHelper

  def initialize(current_user:)
    @current_user = current_user
  end

end
