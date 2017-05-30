module UsersHelper
  def avatar_for(user)
    avatar_url = 'male.png'
    avatar_url = 'female.png' unless user.sex

    image_tag(avatar_url, alt: user.name, class: 'avatar')
  end
end
