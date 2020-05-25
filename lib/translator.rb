# require modules here
require "yaml"
require "pry"

def load_library(yaml_file)
  # code goes here
  emotis = YAML.load_file(yaml_file)
  new_hash = {}
  emotis.each do |name, symbols| 
   new_hash[name] = {
     english: symbols[0],
     japanese: symbols[1]
   }
  end
  new_hash
end

def get_japanese_emoticon(yaml_file, eng_emoti)
  # code goes here
  translation = ""
  new_hash = load_library('./lib/emoticons.yml')
  new_hash.each do |name, languages|
      if languages[:english] == eng_emoti
      translation = languages[:japanese]
      return translation
    end
    end
end

def get_english_meaning
  # code goes here
end