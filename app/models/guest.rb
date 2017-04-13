class Guest < ApplicationRecord

  def full_name
    "#{first_name} #{insertion} #{last_name}"
  end
end
