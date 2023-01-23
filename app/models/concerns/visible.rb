# store all the status methods that were duplicated in the models
module Visible
  extend ActiveSupport::Concern

  VALID_STATUSES = ['public', 'private', 'archived']

  included do
    validates :status, inclusion: {in: VALID_STATUSES}
  end

  # display count of public articles or comments on our main page
  class_methods do
    def public_count
      where(status: 'public').count
    end
  end

  def archived?
    status == 'archived'
  end
end
