module UsersHelper
  def have_posts?(user)
    user.posts.count == 0
  end

  def have_comments?(user)
    user.comments.count == 0
  end

  def have_favorites?(user)
    user.favorites.count == 0
  end
end
