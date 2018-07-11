def reformat_languages(languages)
  new_hash = {}
  languages.each do |type, langs|
    if type == :oo
      langs.each do |specific_lang, data|
        new_hash[specific_lang] = data
        new_hash[specific_lang][:syle] = [:oo]
      end
    else
      langs.each do |specific_lang, data|
        if new_hash[specific_lang].has_key? :syle
          puts new_hash[specific_lang][:syle]
        else
          new_hash[specific_lang] = data
          new_hash[specific_lang][:syle] = [:functional]
        end
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