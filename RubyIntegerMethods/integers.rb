[:integer?, 
 :odd?,
 :even?,
 :upto,
 :downto,
 :times,
 :succ,
 :next,
 :pred,
 :chr,
 :ord,
 :to_i,
 :to_int,
 :floor,
 :ceil,
 :truncate,
 :round,
 :gcd,
 :lcm,
 :gcdlcm,
 :numerator,
 :denominator,
 :to_r,
 :rationalize,
 :singleton_method_added,
 :coerce,
 :i,
 :+@,
 :-@,
 :<=>,
 :eql?,
 :fdiv,
 :div,
 :divmod,
 :%,
 :modulo,
 :remainder,
 :abs,
 :magnitude,
 :real?,
 :round(n) rounds a float to n decimal places
]
# 
5.integer?
=> true
# 
5.odd?
=> true
# 
5.even?
=> false
# 
5.upto(10) { |i| puts i }
5
6
7
8
9
10
=> 5
# 
5.downto(1) { |i| puts i }
5
4
3
2
1
=> 5
# 
5.times do |i|
  print i, " "
end
=> 0 1 2 3 4
# 
1.succ      #=> 2
(-1).succ   #=> 0
# 
1.next      #=> 2
(-1).next 
# 
1.pred      #=> 0
(-1).pred   #=> -2
# 
65.chr    #=> "A"
230.chr   #=> "\346"
# 
?a.ord    #=> 97
# 
4.to_int
=> 4
# 
4.76.floor
=> 4
# 
4.76.ceil
=> 5
# 
4.76.truncate
=> 4
# 
4.76.round
=> 5
# 
2.gcd(2)                    #=> 2
3.gcd(-7)                   #=> 1
((1<<31)-1).gcd((1<<61)-1)  #=> 1
# 
2.lcm(2)                    #=> 2
3.lcm(-7)                   #=> 21
((1<<31)-1).lcm((1<<61)-1)  #=> 4951760154835678088235319297
# 
2.gcdlcm(2)                    #=> [2, 2]
3.gcdlcm(-7)                   #=> [1, 21]
((1<<31)-1).gcdlcm((1<<61)-1)  #=> [1, 4951760154835678088235319297]
# 
2/10.numerator
=> 0
2.numerator
=> 2
# 
2.5.denominator
=> 2
# 
1.to_r        #=> (1/1)
(1<<64).to_r  #=> (18446744073709551616/1)
# 
2.5.rationalize
=> (5/2)
# 
10.coerce(54783682)
=> [54783682, 10]
# 
1.i
=> (0+1i)
# 
10 <=> 5
=> 1
10 <=> 50
=> -1
# 
a = 5
=> 5
a.eql?(10)
=> false
# 
5.fdiv(10)
=> 0.5
# 
10.div(10)
=> 1
10.div(100)
=> 0
# 
10.divmod(100)
=> [0, 10]
# 
20.remainder(7)
=> 6
# 
-24783740.abs
=> 24783740
# 
-24783740.magnitude
=> 24783740
# 
24783740.real
=> 24783740
4783740.real?
=> true
# 




