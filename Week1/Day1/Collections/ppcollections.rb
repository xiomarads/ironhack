class ProgrammingLanguage
 attr_accessor :name, :age, :type
 def initialize(name, age, type)
   @name = name
   @age = age
   @type = type
 end
end

ruby = ProgrammingLanguage.new("Ruby", 21, "Dynamic")
 python = ProgrammingLanguage.new("Python", 24, "Dynamic")
 javascript = ProgrammingLanguage.new("JavaScript", 20, "Dynamic")
 go = ProgrammingLanguage.new("Go", 6, "Static")
 rust = ProgrammingLanguage.new("Rust", 5, "Static")
 swift = ProgrammingLanguage.new("Swift", 2, "Static")
 java = ProgrammingLanguage.new("Java", 20, "Static")

 array_of_languages = [ruby, python, javascript, go, rust, swift, java]

def array_printer(array)
 array.each do | language |
   puts "Language: #{language.name} |  Age: #{language.age} |  Type System: #{language.type}"
 end
end

array_of_languages = [ruby, python, javascript, go, rust, swift, java]
array_printer(array_of_languages)

#MAP method

aged_languages = array_of_languages.map do |language|       
    ProgrammingLanguage.new(language.name, language.age + 1, language.type) 
end

puts "The programming languages aged one year are:"
# puts aged_languages 
array_printer(aged_languages)


# Output
# The programming languages aged by one year are:
# Language: Ruby |  Age: 22 |  Type System: Dynamic
# Language: Python |  Age: 25 |  Type System: Dynamic
# Language: JavaScript |  Age: 21 |  Type System: Dynamic
# Language: Go |  Age: 7 |  Type System: Static
# Language: Rust |  Age: 6 |  Type System: Static
# Language: Swift |  Age: 3 |  Type System: Static
# Language: Java |  Age: 21 |  Type System: Static


# Delete_if method

array_of_languages.delete_at(6)
array_printer(array_of_languages)



# Nizar's solution

# sorted_languages.delete_if do | language |
# 	language.name == "Java"
# end



#shuffle method

puts "_____________"
array_of_languages.shuffle!
array_printer(array_of_languages)
puts "_____________"

# Nizar's

# random_languages = sorted_languages.shuffle

puts: "The programming languages in random order are:"
{#randoum_languages}


# sort method

array_of_languages.sort! {|a,b| a.age <=> b.age  } 
array_printer(array_of_languages)







