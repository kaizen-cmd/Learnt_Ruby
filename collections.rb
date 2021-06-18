'''
Array
'''

a = Array.new

a[0] = "Tejas"
a[1] = "Mandre"

puts a

b = ["Tejas", "Deepak", "Mandre", "Hello", "World"]

print b

puts b

a[3] = "Hey"

print a

puts

puts "Is Tejas in b? " + b.include?("Tejas").to_s



'''
Hashes
'''

c = {
    "key" => "value",
    "key2" => "value2"
}

puts c

puts c["key2"]

c["key3"] = "value3"

c["key2"] = "new value 2"

puts c