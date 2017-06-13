# When done, submit this entire file to the autograder.

# Part 1

def sum arr
    # YOUR CODE HERE
    sumVal = 0;
    n = arr.length;
    if n == 0
        return sumVal
    else
        n.times {|x| sumVal += arr[x]}
        return sumVal
    end
end

def max_2_sum arr
    # YOUR CODE HERE
    n = arr.length
    if n==0
        return 0
    elsif n==1
        return arr[0]
    else
        sortedArr = arr.sort { |x,y| y <=> x}
        return sortedArr[0] + sortedArr[1]
    end
end

tstArr1 = []
tstArr2 = [1]
tstArr3 = [1,2,3,4,5]
puts max_2_sum tstArr1
puts max_2_sum tstArr2
puts max_2_sum tstArr3

def sum_to_n? arr, n
    # YOUR CODE HERE
    arrLength = arr.length
    if [0,1].include? arrLength
        return false
    else
      arrLength.times do |i|
          for j in i+1...arrLength
              if arr[i] + arr[j] == n
                  return true
              end
          end
      end
    end
  return false
end

puts sum_to_n? tstArr1,15
puts sum_to_n? tstArr2, 1
puts sum_to_n? tstArr3, 5

# Part 2

def hello(name)
    # YOUR CODE HERE
    return "Hello, " + name
end

puts hello("Deepak")

def starts_with_consonant? s
    # YOUR CODE HERE
    if s.length == 0
        return false
    else
        if s.is_a? String
            if (/[a-z]/ =~ s[0].downcase)
            boolVal = ['A','E','I','O','U'].include? s[0].upcase
            if boolVal
                return false
            else
                return true
            end
            else
              return false
            end
        else
          return false
        end
    end
end

puts starts_with_consonant?('#foo')


def binary_multiple_of_4? s
    # YOUR CODE HERE
    if s.is_a? String
        sLength = s.length;
        if sLength ==0
            return false
        end
        for x in 0...sLength
            if !(['0','1'].include? s[x])
                return false
            end
        end

        sValue = 0;
        iterCounter = 1;
        for x in 0...sLength
            if s[x] == '1'
                sValue += 2**(sLength-iterCounter);
            end
            iterCounter += 1;
        end
        if sValue % 4 ==0
            return true
        else
          return false
        end
    else
      return false
    end
end


# Part 3

class BookInStock
# YOUR CODE HERE

  def initialize(isbn,price)
      if isbn.length == 0 || price <= 0
          raise ArgumentError
      else
        @isbn = isbn
        @price = price
      end
  end

  def isbn
      @isbn
  end
  def isbn=(val)
      @isbn = val
  end

  def price
      @price
  end
  def price=(val)
      @price = val
  end

  def price_as_string
      return '$' + ('%.2f' % @price).to_s
  end
end

book1 = BookInStock.new('1',2)
puts book1.isbn
book1.isbn = '2'
puts book1.price_as_string

