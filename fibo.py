import sys
    
#returns the fibonacci sequence up until a certain index [or value]
def fibonacci_sequence(seed1, seed2, n, maxvalue=sys.maxint):
    def _nacci(a, b, n, maxvalue):
        c = a + b
        if n == 0 or maxvalue <= c: return []
        return [c] + _nacci(b, c, n - 1, maxvalue)
    if n > 1:
        return [seed1, seed2] + _nacci(seed1, seed2, n - 2, maxvalue)
    elif n == 1 and maxvalue > seed1:
        return [seed1]
    else: return []

#returns the nth fibonacci number
def fibonacci_number(seed1, seed2, n):
    return fibonacci_sequence(seed1, seed2, n) [-1]

#print fibonacci_sequence(0, 1, 45, 1000)
#print fibonacci_number(0, 1, 45)
