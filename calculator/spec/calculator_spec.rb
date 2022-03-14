require "spec_helper"
require './calculator'

describe Calculator do
    let(:calculator) { Calculator.new }

    context '#add' do
        it 'adds 2 numbers' do
            expect(calculator.add(2,2)).to eq(4)
        end

        it 'adds 2 big number' do
            expect(calculator.add(2000000000,2000000000)).to eq(4000000000)
        end

        it 'adds with negative number' do
            expect(calculator.add(-30,20)).to eq(-10)
        end

        it 'adds with float numbers' do
            expect(calculator.add(2.5,2.5)).to eq(5)
        end
    end

    context '#sub' do
        it 'subtract 2 numbers' do
            expect(calculator.sub(2,2)).to eq(0)
        end

        it 'subtract 2 big number' do
            expect(calculator.sub(2000000000,2000000000)).to eq(0)
        end

        it 'subtract with negative number' do
            expect(calculator.sub(-30,20)).to eq(-50)
        end

        it 'subtract with float numbers' do
            expect(calculator.sub(2.5,2.5)).to eq(0)
        end
    end

    context '#div' do
        it 'divide 2 numbers' do
            expect(calculator.div(2,2)).to eq(1)
        end

        it 'divide 2 big number' do
            expect(calculator.div(2000000000,2000000000)).to eq(1)
        end

        it 'divide with negative number' do
            expect(calculator.div(-30,2)).to eq(-15)
        end

        it 'divide with float numbers' do
            expect(calculator.div(2.5,2.5)).to eq(1)
        end

        it 'fails when dividing per 0' do
            expect(calculator.div(2,0)).to eq('invalid entry')
        end

        it 'divide 0 per other number' do
            expect(calculator.div(0,20)).to eq(0)
        end

        it 'divides sucessfully when result is float' do
            expect(calculator.div(5.0,2)).to eq(2.5)
        end
    end

    context '#mult' do
        it 'multiply 2 numbers' do
            expect(calculator.mult(2,2)).to eq(4)
        end

        it 'multiply 2 big number' do
            expect(calculator.mult(2000000000,2000000000)).to eq(4000000000000000000)
        end

        it 'multiply with negative number' do
            expect(calculator.mult(-30,20)).to eq(-600)
        end

        it 'multiply with float numbers' do
            expect(calculator.mult(2.5,2.5)).to eq(6.25)
        end
    end
end