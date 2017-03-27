class AddPublishedToGuestbook < ActiveRecord::Migration[5.0]
  def change
    add_column :guestbooks, :published, :boolean, default: false
  end
end
