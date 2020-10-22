def substrings(word, dictionary)
    # Break into individual words and strip extra characters
    word = word.downcase.gsub(/[^a-z ']/, '')
    word_array = word.split(' ')
    
    # Initialise empty hash
    count = {}

    # Check each word against dictionary
    for word in word_array do
        for entry in dictionary do
            if word.include?(entry)
                if count[entry]
                    count[entry] += 1
                else 
                    count[entry] = 1
                end
            end
        end
    end

    count
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts "Enter text to analyse"
text = gets.chomp

substrings(text, dictionary).each { |k,v| puts "#{k} - #{v}" }