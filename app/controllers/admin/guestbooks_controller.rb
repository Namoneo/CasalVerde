class Admin::GuestbooksController < Admin::BaseController
  def index
    @guestbooks_published = Guestbook.all.where(published: true)
    @guestbooks_unpublished = Guestbook.all.where(published: false)
  end

  def update
    guestbook = Guestbook.find(params[:id])
    if guestbook.published == true
      guestbook.published = false
    else
      guestbook.published = true
    end
    guestbook.save

    respond_to do |f|
      f.html { redirect_to admin_guestbooks_path }
    end

  end

  def destroy
    @guestbook = Guestbook.destroy(params[:id])

    respond_to do |f|
      f.html { redirect_to admin_guestbooks_path }
    end

  end
end
