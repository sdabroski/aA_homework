require 'byebug'

#normal solution
def bubble_sort(arr)
    sorted = false
    while !sorted
        (0...(arr.length - 1)).each do |i|
            sorted = true
            if arr[i] > arr[i + 1]
                arr[i], arr[i + 1] = arr[i + 1], arr[i]
                sorted = false
            end
        end
    end
    arr
end

#with monkey patching
class Array
    def bubble_sort_with_proc(&prc)
        sorted = false

        while !sorted
            sorted = true
            (0...self.length - 1).each do |i|
                if prc.call(self[i], self[i+1])
                    sorted = false
                    self[i], self[i+1] = self[i+1], self[i]
                end
            end
        end
        self
    end
end
arr = [2,3,1,7,2,15]
arr.bubble_sort_with_proc {|a, b| a > b}


#[2,3,1,7,2,15]
def quicksort(arr)
    return arr if arr.length == 0
    
    hinge = arr[0]

    left = arr.select{|el1| el1 < hinge}
    right = arr.select{|el2| el2 > hinge}

    quicksort(left) + [hinge] + quicksort(right)
end

arr = [2,3,1,7,2,15]
quicksort(arr)


