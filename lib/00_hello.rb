def sayhello(first_name)
    puts "Bonjour #{first_name} !"
end

def ask_first_name()
    puts "Comment tu t'appelles ?"
    first_name = gets.chomp
    return first_name
end

first_name = ask_first_name()
sayhello(first_name)

