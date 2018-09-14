# When done, submit this entire file to the autograder.

# Part 1

def sum arr
    sums = 0
    arr.each do |x|
        sums += x
    end
    return sums
end

def max_2_sum arr
    if arr.empty?
        return 0
    end
    arr1 = arr.sort{ |a, b| b <=> a }
    if arr.length == 1
        return arr1[0]
    end
    return arr1[0] + arr1[1]
end

def sum_to_n? arr, n
    if arr.length <= 1
        return false
    end
    arr.each do |x|
        if arr.include?(n-x)
            if 2*x == n
                return true unless arr.count(x) == 1
            else
                return true
            end
        end
    end
    return false
end

# Part 2

def hello(name)
    return "Hello, " + name
end

def starts_with_consonant? s
    if s.empty?
        return false
    end
    s1 = s.capitalize
    if ['B', 'C', 'D', 'F', 'G', 'H', 'J', 'K', 'L', 'M', 'N', 'P', 'Q', 'R', 'S', 'T', 'V', 'W', 'X', 'Y', 'Z'].include?(s1[0])
        return true
    else
        return false
    end

end

def binary_multiple_of_4? s
    if s.length <= 2
        return s == "0"
    end
    s.each_char do |x|
        unless ['0', '1'].include?(x)
            return false
        end
    end
    s1 = s.reverse
    if s1[0,2] == "00"
        return true
    else
        return false
    end
end

# Part 3

class BookInStock
    
    def initialize(isbn, price)
        if isbn.empty?
            raise ArgumentError
        end
        if price <= 0
            raise ArgumentError
        end
        @isbn, @price = isbn, price
    end
    
    def isbn
        @isbn
    end
    
    def price
        @price
    end
    
    def isbn=(new_isbn)
        @isbn = new_isbn
    end
    
    def price=(new_price)
        @price = new_price
    end
    
    def price_as_string
        s = "$" + price.to_s
        if s.include?('.')
            if s.length - s.index('.') == 3
                return s
            elsif s.length - s.index('.') == 2
                return s + '0'
            end
        else
            return s + ".00"
        end
    end
    
end
