
bands = {
  joy_division: %w[ian bernard peter stephen],
  the_smiths: %w[johnny andy morissey mike]
}

bands.reduce({}) do |memo, (key, value)|
  p memo
  p key
  p value 
  memo
end

sorted_member_list = bands.reduce({}) do |memo, (key, value)|
  memo[key] = value.sort 
  memo
end

p bands
p sorted_member_list

firstmost_name = bands.reduce(nil) do |memo, (key, value)|
  memo = value[0] if !memo
  sorted_names = value.sort 
  memo = sorted_names[0] if sorted_names[0] <= memo
  memo
end

p firstmost_name





