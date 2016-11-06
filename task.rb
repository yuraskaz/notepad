require 'date'
class Task < Post

  def initialize
    super
    @due_data = Time.now
  end

  def read_from_console
    puts "что надо сделать?"
    @text = STDIN.gets.chomp

    puts "к какому числу надо сделать введите дату в формате дд.мм.гг ?"
    input = STDIN.gets.chomp

    @due_data = Data.parse(input)

  end

  def to_string
    time_string = "создано #{created_at.strftime("%Y.%M.%D,%H.%M.%S")} \n\r \n\r"

    deadline = "Крайний срок: #{ @due_data}"
    retutn [deadline,@text,time_string]

  end

end