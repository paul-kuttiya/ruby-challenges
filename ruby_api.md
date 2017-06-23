* use each_cons

* use scan to extract in array matched regex  
~> `'AUGUUUUGG'.scan(/\w{3}/)`  
~> `["AUG", "UUU", "UGG"]`

* use arr.each_slice(arg) to return enum block of group_number element  
~> then use map and call join for each element  
~> `'AUGUUUUGG'.chars.each_slice(3).map(&:join)`  
~> `["AUG", "UUU", "UGG"]`
