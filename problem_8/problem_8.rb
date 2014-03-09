# Problem 8: Find the greatest product of five consecutive digits in the 1000-digit specified below

  # This solution is, unintentionally, a variant of Problem 8. There are two interpretations of this problem:
  #   1) Find the largest product of each (pair of) consecutive 5-digit number(s). I.e. 73167 * 17653 vs 17653 * 13306 vs ...
  #   2) Find the largest of each 5-digit chunk of numbers. I.e. 7*3*1*6*7 vs 3*1*6*7*1 vs ...
  # I chose the former interpretation.

# Answer: 9206984122

class Problem8
  @@num = 7316717653133062491922511967442657474235534919493496983520312774506326239578318016984801869478851843858615607891129494954595017379583319528532088055111254069874715852386305071569329096329522744304355766896648950445244523161731856403098711121722383113622298934233803081353362766142828064444866452387493035890729629049156044077239071381051585930796086670172427121883998797908792274921901699720888093776657273330010533678812202354218097512545405947522435258490771167055601360483958644670632441572215539753697817977846174064955149290862569321978468622482839722413756570560574902614079729686524145351004748216637048440319989000889524345065854122758866688116427171479924442928230863465674813919123162824586178664583591245665294765456828489128831426076900422421902267105562632111110937054421750694165896040807198403850962455444362981230987879927244284909188845801561660979191338754992005240636899125607176060588611646710940507754100225698315520005593572972571636269561882670428252483600823257530420752963450

  class << self
    # Method 1: Gather all possible 5 digit consecutive values from NUM. Returns a collection of arrays, ([[]]), each with length 2
    def gather_5_digit_pairs
      collection = @@num.to_s.split('').each_slice(5).reduce([]) do |new_array, slice|
        new_array << slice
        new_array
      end.map {|el| el.join(',').gsub(',', '').to_i }
      collection = gather_pairs(collection)
      collection
    end

    # Helper for above method. Create pairs of consecutive elements
    def gather_pairs(arr)
      collection = []
      until [0, 1].include? arr.size
        new_arr = [arr.shift, arr.first]
        collection << new_arr
      end
      collection
    end

    # Method 2: Iterate over each array, given gather_5, and find product of both values. Return an array of products ([])
    def productize(collection)
      collection.reduce([]) do |new_array, el|
        new_array << el.reduce(:*)
        new_array
      end
    end

    # Method 3: Put it all together
    def solution
      t1 = Time.now
      answer = productize(gather_5_digit_pairs).max
      t2 = Time.now
      p "This script took #{t2 - t1}s to find the answer of #{answer}"
    end
  end
end

Problem8.solution
