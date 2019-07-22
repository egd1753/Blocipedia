class Wiki < ApplicationRecord
#  after_initialize :set_default_privacy, :if => :new_record?
  belongs_to :user, optional: false
  has_many :collaborators, dependent: :destroy
  has_many :users, through: :collaborators, dependent: :destroy

  def set_default_privacy
     self.private ||= false
  end

end
