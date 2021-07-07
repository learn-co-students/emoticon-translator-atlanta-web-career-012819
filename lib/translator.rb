require "yaml"

def load_library(filename)
  lib = YAML.load_file(filename)
  new_hash = {"get_meaning" => {}, "get_emoticon" => {}}
  lib.each do |meaning, emoticons|
  	new_hash["get_meaning"][emoticons[1]] = meaning
  	new_hash["get_emoticon"][emoticons[0]] = emoticons[1]
  end
  new_hash
end

def get_japanese_emoticon(filename, emoticon)
  lib = load_library(filename)
  if lib["get_emoticon"].has_key?(emoticon)
  	lib["get_emoticon"][emoticon]
  else
  	"Sorry, that emoticon was not found"
  end
end

def get_english_meaning(filename, emoticon)
  lib = load_library(filename)
  if lib["get_meaning"].has_key?(emoticon)
  	lib["get_meaning"][emoticon]
  else
  	"Sorry, that emoticon was not found"
  end
end