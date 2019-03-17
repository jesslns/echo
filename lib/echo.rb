class Echo

  def greeting
    puts "Say something:"
  end

  def input
    $stdin.gets.chomp
  end

  def timestamp
    time = Time.new
    "#{time.strftime('%Y-%m-%d')} | #{time.strftime('%H:%M')} |"
  end

  def echo
    greeting
    input = self.input
    until input == "exit" do
      puts "#{self.timestamp} You said: '#{input}'!"
      greeting
      input = self.input
    end
    puts 'Goodbye!'
  end

end

# Uncomment below for terminal interaction 
# game = Echo.new
# game.echo
