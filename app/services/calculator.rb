class Calculator
  def self.add(input)
    return 0 if input.empty?

    delimiters = [",", "\n"]
    if input.start_with?("//")
      custom_delimiter = input[2]
      delimiters << custom_delimiter
      input = input[4..-1]
    end

    numbers = input.split(Regexp.union(delimiters)).map(&:to_i)
    negatives = numbers.select { |n| n < 0 }
    
    if negatives.any?
      raise "negative numbers not allowed: #{negatives.join(", ")}"
    end

    numbers.sum
  end
end
