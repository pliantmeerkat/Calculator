require './lib/Calc'
require 'fox16'

describe Calc do
     x = 12; y = 15
    describe 'add' do

        it 'has the add method' do
            expect(subject).to respond_to(:add)
        end

        it 'can add two numbers correctly' do
            expect(subject.add([x, y])).to eq(x + y)
        end
        it 'can add more than two numbers correctly' do 
            input = []
            5.times { |i| r = rand(50)
            input.push(r) }
            expect(subject.add(input)).to eq(input.inject(:+))
            print subject.pretty_print
        end
    end
    describe 'subtract' do

        it 'has the subtract method' do 
            expect(subject).to respond_to(:subtract)
        end
        
        it 'can subtract two numbers correctly' do  
            expect(subject.subtract([x, y])).to eq(x - y)
        end
    end
    describe 'divide' do 
        it 'has the divide method' do 
            expect(subject).to respond_to(:divide)
        end

        it 'can divide two numbers correctly' do
            expect(subject.divide([x, y])).to eq(x / y)
        end 
    end
    describe 'multiply' do
        it 'has the multiply method' do 
            expect(subject).to respond_to(:multiply)
        end 
        
        it 'can multiply two numbers correctly' do
            expect(subject.multiply([x, y])).to eq(x * y)
        end
    end

    describe 'has and can show total' do
        it 'has a variable called total' do
            expect(subject).to respond_to(:total)
        end
        it 'can print total' do
            expect(subject).to respond_to(:print_total)
            expect(subject.print_total).to eq(0)
        end
        it 'can print pretty total' do
            expect(subject).to respond_to(:pretty_print)
        end
        
    end
    describe 'combined operations' do 
        it 'can add two numbers and multiply by another' do
            z = subject.add([x, y])
            z = subject.multiply([z, 25])
            expect(z).to eq((x + y) * 25)
        end
    end

end