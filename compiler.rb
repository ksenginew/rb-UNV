#adapted from https://git.io/JSDcW
# access STDIN

$input=ARGV[0]

# File to open 
file = File.open("#$input")
data = file.read.split("\n")

data.each { |line|
    # Main loop
    #-----
    line.gsub!("func","def") # assumed but lol func is my favorite function keyword and it makes sense
    line.gsub!("print","puts")
    line.gsub!("("," ")
    line.gsub!(")"," ")
    # pretty basic I know.....
    
}

data.delete("")

data.each { |line|
    line[line.length] = "\n"
}

data = data.join("")
File.open("out.rb", "w") { |f| f.write data }
