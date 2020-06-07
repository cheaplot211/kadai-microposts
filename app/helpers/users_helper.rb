module UsersHelper
  def gravatar_url(user, opitions = { size: 80 })
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = opitions[:size]
    "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
  end 
end
