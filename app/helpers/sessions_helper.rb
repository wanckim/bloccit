module SessionsHelper
  def create_session(user)
    session[:user_id] = user.id
  end

  def destroy_session(user)
    session[:user_id] = nil
  end

  def current_user
    User.find_by(id: session[:user_id])
  end

  def avatar_url(user)
    gravatar_id = Digest::MD5::hexdigest(user.email).downcase
    "https://secure.gravatar.com/avatar/#{gravatar_id}?s=64"
  end
end
