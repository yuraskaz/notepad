class Post

  def self.post_types
    [Memo,Link,Task]
  end

  def self.create(type_index)
    return post_types[type_index].new
  end

  def initialize
    @created_at = Time.now
    @text = nill
  end

  def read_from_console
    #to do
  end

  def to_string
    #to do
  end

  def save
    file = File.new(file_path,"w:UTF-8")

    for item in to_string do
      file.puts(item)
    end
    file.close
  end

  def file_path
    current_path = File.dirname(__FILE__)
    file_name = @created_at.strftime("#{self.class.name}_%Y-%m-%d_%H-%M-%s.txt")
    return current_path + "/" + file_name
  end
end