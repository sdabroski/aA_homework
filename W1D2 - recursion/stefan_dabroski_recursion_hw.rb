# Test Cases
#   ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')  # => returns false
#   ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')  # => returns true
#   ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')  # => returns false
#   ice_cream_shop(['moose tracks'], 'moose tracks')  # => returns true
#   ice_cream_shop([], 'honey lavender')  # => returns false


def ice_cream_shop(arr, favorite)

    return false if arr.length == 0 

    if favorite == arr.pop 
        return true
    else
        ice_cream_shop(arr, favorite)
    end
end