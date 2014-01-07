module PostsHelper

  def post_link(post, current_post)
    content_tag :li, class: ('active' if post == current_post) do
      link_to post.title, post
    end
  end

end

