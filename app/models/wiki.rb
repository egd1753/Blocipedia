class Wiki < ApplicationRecord
#  after_initialize :set_default_privacy, :if => :new_record?

  belongs_to :user, optional: true

  def set_default_privacy
     self.private ||= false
  end

end
