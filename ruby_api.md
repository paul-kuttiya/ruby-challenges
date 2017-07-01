* `"abcde"[0..2] #=> "abc"`  

* `"abcde"[0...2] #=> "ab"`  

* use `arr.each_cons` for consecutive literation  
```ruby
(1..10).each_cons(3) { |a| p a }
<!--[1, 2, 3]
[2, 3, 4]
[3, 4, 5]
[4, 5, 6]
[5, 6, 7]
[6, 7, 8]
[7, 8, 9]
[8, 9, 10]-->
```

* manually build each_cons  
```ruby
def consec_num(array, num=1)
  result = []
  array.each_with_index do |n, idx|
    last_idx = idx + (num - 1)
    chunk = array[idx..last_idx]
    result << chunk if chunk.size == num
  end
  result
end
```

* use scan to extract in array matched regex  
~> `'AUGUUUUGG'.scan(/\w{3}/)`  
~> `["AUG", "UUU", "UGG"]`

* use arr.each_slice(arg) to return enum block of group_number element  
~> then use map and call join for each element  
~> `'AUGUUUUGG'.chars.each_slice(3).map(&:join)`  
~> `["AUG", "UUU", "UGG"]`  

* use hash.fetch(key) to return value from hash at key  
~> `h = { "a" => 100, "b" => 200 }`  
~> `h.fetch("a")  #=> 100`

* use hash.sort to return 2 dimension array with [k, v] sorted by key    
```ruby
h = {
      6 => ['Kareem']
      4 => %w(Jennifer, Christopher),
      3 => ['Kyle'],
    }
  
h.sort  #=>[[3, ['Kyle']], [4, [...]], [6, [...]]]

#convert back to sorted hash, with sorted value
h.sort.map {|k, v| [k, v.sort]}.to_h #=> {3 => [], 4 => [], ...}
```
* ruby string interpolation use double quotes `"#{some_ruby}"`  
~> will not work with single quotes

* build ruby class within a class method  
```ruby
class something
  def initialize(param1, param2)
    @param1 = param1
    @param2 = param2
  end

  def self.build(param1, param2)
    new(param1, param2)
  end

  #other methods...
end
```

* convert number in to leading 0 digits string  
~> `"%02d"%123" #=> "00123"`  

* modular in ruby  
~> `1 % 24 #=> 1`  
~> if minus moudular will substract `-1 % 24 #=> 23`