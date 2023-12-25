def substrings(word, substring_arr)
  res_hash = Hash.new(0)
  input_arr = word.split(' ').map { |w| w.downcase }
  input_arr.each do |inp_str|
    substring_arr.each do |sub_str|
      res_hash[sub_str] = res_hash[sub_str] + 1 if inp_str.include? sub_str
    end
  end
  res_hash
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]
puts(substrings("Howdy partner, sit down! How's it going?", dictionary))
