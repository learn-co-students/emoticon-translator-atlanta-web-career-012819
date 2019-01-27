# require modules here
require 'yaml'
def load_library(file_path)
  face_hash = YAML.load_file(file_path)
  lookup_hash = {'get_meaning' => {}, 'get_emoticon' => {}}
  face_hash.each do |meaning, emoji_pair| # [0:english,1:japanese]
    lookup_hash['get_meaning'][emoji_pair[1]] = meaning
    lookup_hash['get_emoticon'][emoji_pair[0]] = emoji_pair[1]
  end
  lookup_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
