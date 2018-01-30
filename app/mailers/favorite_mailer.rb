class FavoriteMailer < ApplicationMailer
  default from: "wckim88@gmail.com"

  def new_comment(user, post, comment)
    headers["Message-ID"] = "<comments/#{comment.id}@bloccit.example>"
    headers["In-Ready-To"] = "<posts/#{post.id}@bloccit.example>"
    headers["References"] = "<post/#{post.id}@bloccit.example>"

    @user = user
    @post = post
    @comment = comment

    mail(to: user.email, subject: "New comment on #{post.title}")
  end

  def new_post(user, post)
    headers["Message-ID"] = "<posts/#{post.id}@bloccit.example>"

    @user = user
    @post = post

    mail(to: user.email, subject: "You have created the post '#{post.title}'!")
  end
end
