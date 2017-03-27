class Guestbook < ActiveRecord::Base
  validates :name, :email, :message, :presence => true

  def self.published
    where(published: true)
  end
end
