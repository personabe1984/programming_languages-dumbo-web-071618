def reformat_languages(languages)
  new_hash = {}
  languages.each do |type, langs|
    if type == :oo
      langs.each do |specific_lang, data|
        new_hash[specific_lang] = data
        new_hash[specific_lang][:style] = [:oo]
      end
    else
      langs.each do |specific_lang, data|
        if specific_lang == :javascript
          new_hash[specific_lang][:style] << :functional
          #puts new_hash[specific_lang]
        else
          new_hash[specific_lang] = data
          new_hash[specific_lang][:style] = [:functional]
        end
      end
    end
  end
  new_hash
end

=begin 
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
reformat_languages(languages)
=end