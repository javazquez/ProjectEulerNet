# Juan Vazquez 
# https://github.com/javazquez
# http://javazquez.com

m = Enum.reduce Enum.filter(1..999,&( rem( &1,3) == 0 || rem( &1,5) == 0 )), fn(val,acc)-> val+acc end
IO.puts "#{m}"

#m = Enum.reduce Enum.filter(1..999,&( rem( &1,3) == 0 || rem( &1,5) == 0 )), &(&1+&2)

#233168
