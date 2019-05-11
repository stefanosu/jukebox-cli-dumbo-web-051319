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

def play(my_songs)
  list(songs)
  puts
  puts "What song do you want to play. Enter song name or number"
  song_pick = gets.chomp.downcase
  # songs.each_with_index do |song,index|
    if songs.include?(song_pick) 
      puts "Now playing song #{song_pick}"
    elsif songs[song_pick.to_i - 1] 
      puts "Now playing #{songs[song_pick.to_i - 1]}"
    else
      puts "Invalid input. Please try again!"
    end
end

 run(my_songs)

def help
  puts "I accept the following commands:\n
- help : displays this help message\n
- list : displays a list of songs you can play\n
- play : lets you choose a song to play\n
- exit : exits this program"
end


 def list(songs)
  songs.each_with_index do |song,index|
    puts "#{index + 1}. #{song}"
  end
end

 def play(songs)
  list(songs)
  puts
  puts "What song do you want to play. Enter song name or number"
  song_pick = gets.chomp.downcase
  # songs.each_with_index do |song,index|
    if songs.include?(song_pick) 
      puts "Now playing song #{song_pick}"
    elsif songs[song_pick.to_i - 1] 
      puts "Now playing #{songs[song_pick.to_i - 1]}"
    else
      puts "Invalid input. Please try again!"
    end
end


 def exit_jukebox
  puts "Goodbye"
end

 def run(songs)
  help
  puts  
  puts "Please make a selection"
  choice = gets.chomp
  until choice == 'exit'
    case choice

     when 'help'
      help
    when 'list'
      list(songs)
    when 'play'
      play(songs)
    else
      puts 'That is not a option! Try Again.'
    end
  puts
  puts "Please make a selection"
  choice = gets.chomp
  end
exit_jukebox
end