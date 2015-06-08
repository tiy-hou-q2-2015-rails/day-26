class Actor < ActiveRecord::Base
  belongs_to :show

  validates :first_name, :last_name, :character, :show, presence: true

  def full_name
    [last_name, first_name].join(", ")
  end
end
