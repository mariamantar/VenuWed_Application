module ApplicationHelper
  def avatar_url(user)
    #we got a user email from the user object, it will tranform the user email into the gravatar link, a helper can be used anywhere. Now we need to add the garvatar in the navbar
gravatar_id = Digest::MD5::hexdigest(user.email).downcase
"https://www.gravatar.com/avatar/#{gravatar_id}.jpg?d=identical&s=150"
  end
end

def resource_name
   :user
 end

 def resource
   @resource ||= User.new
 end

 def devise_mapping
   @devise_mapping ||= Devise.mappings[:user]
 end
