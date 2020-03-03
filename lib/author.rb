class Author
  attr_accessor :name, :posts, :author
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def posts
    Post.all
  end
  
  def add_post(post)
    post.author = self
  end
  
  def add_post_by_title(title)
    new_post = Post.new(title)
    new_post.author = self
  end
end
