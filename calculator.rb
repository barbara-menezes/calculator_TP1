class Calculator
    def add(a,b)
        a+b
    end

    def sub(a,b)
        a-b
    end

    def div(a,b)
        a/b
    rescue
        'invalid entry'
    end

    def mult(a,b)
        a*b
    end
end