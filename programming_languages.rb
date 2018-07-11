def reformat_languages(languages)
  new_hash = {}
  languages.each do |type, langs|
    if type == :oo
      langs.each do |specific_lang, data|
        new_hash[specific_lang] = data
      end
    end
  end
  new_hash
end


languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}
print reformat_languages(languages)