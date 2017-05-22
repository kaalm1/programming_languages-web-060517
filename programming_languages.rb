def reformat_languages(languages)
  # your code here
  newHash = {}
  languages.each do |x,y|
    y.each do |main,data|
      if newHash[main].nil?
        newHash[main] = {}
        newHash[main][:style] = []
      end
      newHash[main][:type] = data.values.join
      newHash[main][:style] << x
    end
  end
  newHash
end