
class Calc 

    attr_reader :total
    attr_reader :operations
    def initialize
        @total = 0
        @operations = [] # data struct for operations storage
    end

    def add(arr)
        @operations.push(arr.join(' + '))
        @total = arr.inject(:+) 
    end

    def subtract(arr)
        @operations.push(arr.join(' - '))
        @total = arr.inject(:-)
    end

    def divide(arr)
        @operations.push(arr.join(' / '))
        @total = arr.inject(:/)
    end

    def multiply(arr)
        @operations.push(arr.join(' * '))
        @total = arr.inject(:*)
    end

    def print_total
        puts @total; return @total
    end

    def pretty_print
        return "the total for #{operations.join()} is #{total}"
    end
end