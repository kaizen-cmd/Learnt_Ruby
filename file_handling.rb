File.open("index.html", "w") do |file|

    file.write("<h1>Hello World</h1>\n")
    file.write("<h2>Hello World</h2>\n")
    file.write("<h3>Hello World</h3>\n")
    file.write("<h4>Hello World</h4>\n")
    file.write("<h5>Hello World</h5>\n")

end

File.open("index.html", "r") do |file|
    
    for line in file.readlines()

        puts line

    end

end

File.open("index.html", "a") do |file|
    
    file.write("<h6>Hello World</h6>")

end