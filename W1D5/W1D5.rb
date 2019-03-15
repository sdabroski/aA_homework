class Stack
    def initialize
      @thestack = []
    end

    def push(el)
      @stack.push(el)
    end

    def pop
      @stack.pop
    end

    def peek
      @stack[-1]
    end
end

class Queue
    def initialize
        @cue = []
    end

    def enqueue(el)
        @cue.unshift(el)
    end

    def dequeue
        @cue.pop
    end


    def peek
        @cue[-1]
    end
end

class Map
    attr_accessor :hash
    def initialize
        @hash = []
    end

    def set(key, value)
        exists = false
        @hash.each_with_index do |pairs, i|
            if pairs[0] == key
                exists = true
                index = i
            end
        end

        if exists
            @hash[index][1] == value
        else
            @hash << [key, value]
        end
    end
        
        
    def get(key)
        @hash.each_with_index do |pairs, i|
            if pairs[0] == key
               return @hash[i][1]
            end
        end 
    end
    
    
    def show 
        @hash
    end
end


