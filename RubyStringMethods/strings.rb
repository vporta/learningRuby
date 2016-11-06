# String docs http://ruby-doc.org/core-2.2.0/String.html
[:<=>,
 :==,
 :===,
 :eql?,
 :hash,
 :casecmp,
 :+,
 :*,
 :%,
 :[],
 :[]=,
 :insert,
 :length,
 :size,
 :bytesize,
 :empty?,
 :=~,
 :match,
 :succ,
 :succ!,
 :next,
 :next!,
 :upto,
 :index,
 :rindex,
 :replace,
 :clear,
 :chr,
 :getbyte,
 :setbyte,
 :byteslice,
 :scrub,
 :scrub!,
 :freeze,
 :to_i,
 :to_f,
 :to_s,
 :to_str,
 :inspect,
 :dump,

 "hi".eql?("hi")
 # 
 "hi".hash
=> 3038393645749294675
# 
"hi".casecmp("h")
=> 1
"hii".casecmp("hii")
=> 0
 "hii".casecmp("hiii")
=> -1 
# 
"abcd".insert(0, 'X')    #=> "Xabcd"
# 
"hii".size
=> 3
# 
"hii".bytesize
=> 3
# 
"hii".empty?
=> false
# 
'hello'.match('(.)\1')      #=> #<MatchData "ll" 1:"l">
'hello'.match('(.)\1')[0]   #=> "ll"
'hello'.match(/(.)\1/)[0]   #=> "ll"
'hello'.match('xx')         #=> nil
# 
"abcd".succ        #=> "abce"
"THX1138".succ     #=> "THX1139"
# 
"a8".upto("b6") {|s| print s, ' ' }
for s in "a8".."b6"
  print s, ' '
end
# 
"hello".index('e')             #=> 1
"hello".index('lo')            #=> 3
# 
"hello".rindex('e')             #=> 1
"hello".rindex('l')             #=> 3
# 
s = "hello"         #=> "hello"
s.replace "world"   #=> "world"
# 
"stressed".reverse   #=> "desserts"
# 
a = "abcde"
a.clear    #=> ""
# 
a = "abcde"
a.chr    #=> "a"
# 
"hii".getbyte(2)
=> 105
# 
"hii".setbyte(2, 1928)
=> 1928
# 
"hello".byteslice(1)     #=> "e"
"hello".byteslice(-1)    #=> "o"
"hello".byteslice(1, 2)  #=> "el"
# 
"abc\u3042\x81".scrub #=> "abc\u3042\uFFFD"
"abc\u3042\x81".scrub("*") #=> "abc\u3042*"
# 
"9".upto("11").to_a   #=> ["9", "10", "11"]
"25".upto("5").to_a   #=> []
"07".upto("11").to_a  #=> ["07", "08", "09", "10", "11"]
# 
"12345".to_i             #=> 12345
"99 red balloons".to_i   #=> 99
"0a".to_i                #=> 0
# 
"123.45e1".to_f        #=> 1234.5
"45.67 degrees".to_f   #=> 45.67
"thx1138".to_f         #=> 0.0
# 
"hii".to_sym
=> :hii
[63] pry(main)> "hii".to_s
=> "hii"
# 
"hii".inspect
=> "\"hii\""
# 
"hello \n ''".dump  #=> "\"hello \\n ''\"
