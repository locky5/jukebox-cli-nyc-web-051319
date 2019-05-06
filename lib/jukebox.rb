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
  puts "I accept the following commands: - help : displays the help message - list : displays a list of songs you can play - play : lets you choose a song to play - exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, i|
    puts "#{i+1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  choice = gets.chomp
  picked_song = nil 
  songs.each_with_index do |song, i| # song is value, i is index
    if choice == song || choice == (i + 1).to_s 
      picked_song = song # changes picked_song from nil
    end
  end
  if picked_song == nil 
    puts "Invalid input, please try again."
  else
    puts "Playing #{picked_song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  user_response = nil
  while user_response != "exit"
    puts "Please enter a command:"
    user_response = gets.chomp
    if user_response == "list"
      list(songs)
    elsif user_response == "play"
      play(songs)
    elsif user_response == "help"
      help
    end
  end
  exit_jukebox
end