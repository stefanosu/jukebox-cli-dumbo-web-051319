songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
   binding.pry 
  help = <<-HELP
I accept the following commands:
- help  displays this help message
- list displays a list of songs you can play
- play  lets you choose a song to play
- exit  exits this program
HELP
  puts  
end

  def start_game(songs)
  puts "Please enter a command:"
  reply = gets.chomp.downcase.strip
  p reply
  game(reply, songs)
end

 def say_hello(users_name, songs)
  puts "Hi #{users_name}! If you enter a command, we can play together :)"
  start_game(songs)
end


 def list(songs)
  puts "Sure thing! These are the songs I can play:"
  puts songs
  # start_game(songs)
end

 def play(songs)
  puts "Which song would you like to hear?"
  songs.each_with_index do |song, index|
    puts "#{index + 1}—#{song}"
  end
  puts "Which one?"
  song_request = gets.chomp
  song_number = song_request.to_i
  if song_number == 0 # the song was provided as a string
    if songs.include?(song_request)
      puts "Playing song #{song_request}"
    else
      puts "Invalid input, please try again"
      puts
      # play(songs)
    end
  else # the song was provided as a number
    if song_number <= songs.length
      puts "Playing song #{songs[song_number - 1]}"
    else
      puts "Invalid input, please try again"
      puts
      # play(songs)
    end
  end
end

 def exit_jukebox
  # puts "Alright, it's been fun. Ciao for now!"
  puts "Goodbye"
  # exit
end

 def exit_option(songs)
  puts "Sorry, not sure what you mean. Do you want to try and play again? Your options are yes and no. Which is it?"
  exit_answer = gets.chomp.downcase.strip
  if exit_answer == "yes"
    start_game(songs)
  elsif exit_answer == "no"
    exit_jukebox
  else
    exit_option(songs)
  end
end

 def game(reply, songs)
  if reply == "help"
    help
    # start_game(songs)
  elsif reply == "list"
    list(songs)
    start_game(songs)
  elsif reply == "play"
    play(songs)
    start_game(songs)
  elsif reply == "exit"
    exit_jukebox
  else
    exit_option(songs)
  end
end

 trap(:INT) do
puts
  exit_jukebox
end

 def run(songs)
   puts "Hi! What's your name?"
   users_name = gets.chomp
  say_hello("Leah", songs)
end
  