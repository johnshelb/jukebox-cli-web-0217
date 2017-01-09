#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer
require 'pry'
my_songs = {
 "Go Go GO" => '/Users/johnshelby/code-labs/jukebox-cli-web-0217/audio/Emerald-Park/01.mp3',
 "LiberTeens" => '/Users/johnshelby/code-labs/jukebox-cli-web-0217/audio/Emerald-Park/02.mp3',
 "Hamburg" =>  '/Users/johnshelby/code-labs/jukebox-cli-web-0217/audio/Emerald-Park/03.mp3',
 "Guiding Light" => '/Users/johnshelby/code-labs/jukebox-cli-web-0217/audio/Emerald-Park/04.mp3',
 "Wolf" => '/Users/johnshelby/code-labs/jukebox-cli-web-0217/audio/Emerald-Park/05.mp3',
 "Blue" => '/Users/johnshelby/code-labs/jukebox-cli-web-0217/audio/Emerald-Park/06.mp3',
 "Graduation Failed" => '/Users/johnshelby/code-labs/jukebox-cli-web-0217/audio/Emerald-Park/07.mp3'
 }

def help
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end



def list(my_songs)
  song_array=my_songs.keys
  for i in (0...song_array.count)
    puts song_array[i]
  end
  song_array
end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  song_array=list(my_songs)
  puts "What song would you like to hear?"
  song_choice=gets.chomp
  if song_array.include?(song_choice)
    system "open #{my_songs[song_choice]}"
  else puts "That is not a song on the list"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  command=''
  while command!="exit"
    puts "Please enter a command:"
    command=gets.chomp
    if command=="help"
      help
    elsif command=="play"
      play(my_songs)
    elsif command=="list"
      list(my_songs)
    end
  end
      exit_jukebox
end
