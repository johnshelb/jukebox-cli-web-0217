require 'pry'
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

def list(songs)
  for i in (0...songs.count)
    puts "#{i+1}. #{songs[i]}"
  end
end

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  if !((1..9)===input.to_i || songs.include?(input))
      puts "Invalid input, please try again"
  end
  if (1..9)===input.to_i
    puts "Playing #{songs[input.to_i-1]}"
  else puts "Playing #{input}"
  end
end


def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  command=''
  while command!="exit"
    puts "Please enter a command:"
    command=gets.chomp
    if command=="help"
      help
    elsif command=="play"
      play(songs)
    elsif command=="list"
      list(songs)
    end
  end
      exit_jukebox
end
