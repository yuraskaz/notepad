class Memo < Post

  def read_from_console
    puts "Пишите что хотите до строчки  \end\:)"
    @text = []
    line =nil
    while
      != "end" do
      line = STDIN.gets.chomp
      @text << line
    end
    @text.pop

  end

  def to_string
    time_string = "создано #{created_at.strftime("%Y.%M.%D,%H.%M.%S")} \n\r \n\r"
    return @text.unshift(time_string)

  end
end