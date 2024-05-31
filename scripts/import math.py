import math

def f(x):
    if x > 0:
        return math.log(x) + x**2 - 8*x + 2
    else:
        return float('inf')

def false_position(x0, x1, e):
    step = 1
    condition = True
    while condition:
        x2 = x0 - (x1-x0) * f(x0)/( f(x1) - f(x0) )
        print('Iteración-%d, x2 = %0.6f y f(x2) = %0.6f' % (step, x2, f(x2)))

        if f(x0) * f(x2) < 0:
            x1 = x2
        else:
            x0 = x2

        step = step + 1
        condition = abs(f(x2)) > e

    print('\nLa raíz aproximada es: %0.8f' % x2)

# Valores iniciales
x0 = 2
x1 = 3
e = 0.10

# Ejecutando el método
false_position(x0, x1, e)