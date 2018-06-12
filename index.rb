puts "Hello, Ruby!";


my_array = [1,2,3,4,5]
@sum = 0

#my_array.each {|i| @sum += i }

#puts @sum
#end

for i in my_array
	@sum += i
end
puts @sum

#-------------------------------

a = [ "a", "b", "c" ]
n = [ 65, 66, 67 ]
puts a.pack("A3A3A3")   #=> "a  b  c  "
puts a.pack("a3a3a3")   #=> "a\000\000b\000\000c\000\000"
puts n.pack("ccc")      #=> "ABC"


#-------------------------------

range1 = (1..10).to_a

puts "#{range1}"

#-------------------------------

score = 70

case score
   when 0..40 then puts "Fail"
   when 41..60 then puts "Pass"
   when 61..70 then puts "Pass with Merit"
   when 71..100 then puts "Pass with Distinction"
   else puts "Invalid Score"
end

#-------------------------------

class Test
	def ABC
	puts "Hello Call Test"
	end	
end

my_result = Test. new	

my_result.ABC

#-------------------------------

$global_variable = 10
class Class1
   def print_global
      puts "Global variable in Class1 is #$global_variable"
   end
end

my_variable = Class1.new

my_variable.print_global

#-------------------------------

(1..10).each do |n|
	puts n, " "
end	

a =10
b =20

puts a**b

#-------------------------------

$i = 0
$num = 5

while $i < $num do
   puts $i

$i +=1
end

#-------------------------------

$i = 0
$num = 5

until $i > $num do
   puts("Number is : #{$i}")

   $i +=1
end

#-------------------------------

for i in (1..5)
   puts("Local variable value is #{i}")
end

#-------------------------------

for i in (0..5)
   if i > 2 then
      break
    end
    puts "Value of local variable is #{i}"
end

#-------------------------------

def test
   i = 100
   j = 200
   k = 300
   return i, j, k
end

var = test
puts "#{var}"   
   
#-------------------------------

def Simple (*test)
   puts "The number of parameter is #{test.length}" 
   for i in 0...test.length
      puts "The parameter are #{test[i]}"
   end
end

Simple "Hello", "Amit", "007"

#-------------------------------

nums = Array.new(10){ |e| e = e * 2 }

puts nums

#-------------------------------

nums = Array.new(4, "Amit")

puts "#{nums}"




#-------------------------------
class Box
   BOX_COMPANY = "TATA Inc"
   BOXWEIGHT = 10
   # constructor method
   def initialize(w,h)
      @width, @height = w, h
   end
   # instance method
   def getArea
      @width * @height
   end
end

# create an object
box = Box.new(10, 20)

# call instance methods
a = box.getArea()
puts "Area of the box is : #{a}"
puts Box::BOX_COMPANY
puts "Box weight is: #{Box::BOXWEIGHT}"

#-------------------------------

rice_on_square = 1  
2.times do |square|  
  puts "On square #{square + 1} are #{rice_on_square} grain(s)"  
  rice_on_square *= 2  
end  

#-------------------------------
a = "hello"

a << "World"

puts a.concat(33)

#-------------------------------
a = "hello there"

puts a[1]

puts a.slice!(1..3)

puts a

#-------------------------------

h = Hash.new("Go Fish")
h["a"] = 100
h["b"] = 200
h["a"]           #=> 100
h["c"]           #=> "Go Fish"
puts h["c"]
# The following alters the single default object
puts h["c"].upcase!   #=> "GO FISH"
h["d"]           #=> "GO FISH"
h.keys           #=> ["a", "b"]

# While this creates a new default object each time
h = Hash.new { |hash, key| hash[key] = "Go Fish: #{key}" }
h["c"]           #=> "Go Fish: c"
h["c"].upcase!   #=> "GO FISH: C"
h["d"]           #=> "Go Fish: d"
h.keys           #=> ["c", "d"]

#------------------------------------------------

class Box

   @@count = 0   
   def initialize(w, h)
      @width, @height=w, h
   
      @@count += 1
   end

   def self.getCount()
      puts "The count is #{@@count}"
   end

end

box1 = Box.new(10, 20)
box2 = Box.new(20, 30)


#Box.getCount()     
   



#----------------------------
#Constants Variables

class Test
   VAR1 = VAR2 = 10

   VAR1 = 20
   def show
      puts "The contants variable is #{VAR2}"
   end
end

test = Test.new()

test.show      

