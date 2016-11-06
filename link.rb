class Link < Post

  def initialize
    super

    @url = " "
  end

  def read_from_console
    puts "Адресс сылки ?"
    @url = STDIN.gets.chomp

    puts "Описание ссылки ?"
    @text = STDIN.gets.chomp
  end

  def to_string
    time_string = "создано #{created_at.strftime("%Y.%M.%D,%H.%M.%S")} \n\r \n\r"
     return [@url,@text,time_string]

  end

end