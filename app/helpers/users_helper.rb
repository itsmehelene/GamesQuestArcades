module UsersHelper
  def avatar_image_tag(user, options = {})
    if user.photo.present?
      cl_image_tag user.photo, options
    else
      image_tag 'mario.jpeg', options
    end
  end
end
