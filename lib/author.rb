class Author

attr_accessor :name, :posts
@@all = []

def initialize(name)
@name = name
@posts = []
end

def self.all
@@all
end

def add_post(post)
  post.author = self
@posts << post
@@all << post
end

def add_post_by_title(post_title)
  new_post = Post.new(post_title)
  new_post.author = self
  @posts << new_post
  @@all << new_post
end

def self.post_count
@@all.count
end




end
