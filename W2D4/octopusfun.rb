arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
def sluggish_octo(arr)
    longest_word = nil
    (0...arr.length - 1).each do |i|
        ((i + 1)...arr.length).each do |j|
            if arr[i].length > arr[j].length
                longest_word = arr[i]
            else
                longest_word = arr[j]
            end
        end
    end
    longest_word
end

sluggish_octo(arr)