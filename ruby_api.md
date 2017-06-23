* use each_cons

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
