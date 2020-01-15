# ASSESSMENT 5: INTRO TO RAILS
# Coding practical questions

# 1. Create a method called hello_world that takes a language code (e.g. "es", "de", "ru", "ja") as an argument and returns the appropriate version of "Hello, World" for the given language. The default should be English. Test your code with THREE method calls. Expected output for hello_world 'es': 'Hola Mundo', hello_world 'de': 'Hallo Welt'
def hello_world lang
    case lang
        when "es"
            "Hola Mundo"
        when "de"
            "Hallo Welt"
        when "ru"
            "Привет, мир"
        when "ja"
            "こんにちは世界"
        else
            "Hello World"
    end
end

puts hello_world "es"
puts hello_world "de"
puts hello_world "ru"
puts hello_world "ja"
puts hello_world "en"

# 2a. Create a method called assign_grade that takes a number as an argument and returns the corresponding letter grade. Test your code with THREE method calls. Expected output for assign_grade 96: 'A', assign_grade 75: 'C'

def assign_grade grade
    case grade
        when 90..100
            "A"
        when 80..89
            "B"
        when 70..79
            "C"
        when 60..69
            "D"
        else
            "F"
    end    
end

puts assign_grade 96
puts assign_grade 75

# 2b. STRETCH: Create exceptions to your method if the number passed is less than 0 or greater than 100. Copy and paste the original code below to add the exceptions.

def assign_grade grade
    case grade
        when 90..100
            "A"
        when 80..89
            "B"
        when 70..79
            "C"
        when 60..69
            "D"
        else
            if grade >= 101
                "A+"
            elsif grade <= 59
                "F"
            end
    end    
end

puts assign_grade (-1)
puts assign_grade 101

# 3a. Create a method called pluralizer that takes 2 arguments - a singular noun and a number - and returns the number and the pluralized form of the noun, if necessary. Test your code with THREE method calls. Expected output of pluralizer(5, cat): '5 cats', expected output of pluralizer(1, dog): '1 dog'

def pluralizer num, word
    case
        when num <= 0
            "No #{word}s"
        when num != 1 
            "#{num} #{word}s"
        else
           "#{num} #{word}" 
    end 
end

puts pluralizer 5,"cat"
puts pluralizer 1,"dog"
puts pluralizer (-1),"turtle"

# 3b. STRETCH: Pick three nouns with irregular pluarlization like sheep, goose/geese, child/children, person/people, crossroads, pants and add the exceptions to your code. Copy and paste the original code below to add the exceptions.

def pluralizer2 num, word
    if word == "goose"
        new_word = "geese"
    elsif word == "child"
        new_word = "children" 
    elsif word == "person"
        new_word ="people"
    else 
        new_word = "#{word}s"
    end
    
    case
        when num <= 0
            "No #{new_word}"
        when num != 1 
            "#{num} #{new_word}"
        else
           "#{num} #{word}" 
    end 
end

puts pluralizer2 2,"goose"
puts pluralizer2 1,"child"
puts pluralizer2 (-1),"person"
puts pluralizer2 (0),"dog"