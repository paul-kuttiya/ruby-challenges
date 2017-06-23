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