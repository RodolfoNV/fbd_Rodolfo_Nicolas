import math

def f(x):
    if x > 0:
        return math.log(x) + x**2 - 8*x + 2
    else:
        return float('inf')

def false_position(x0, x1, e, max_iter):
    step = 1
    condition = True
    while condition and step <= max_iter:
        x2 = x0 - (x1-x0) * f(x0)/( f(x1) - f(x0) )
        print('Iteración-%d, x2 = %0.6f y f(x2) = %0.6f' % (step, x2, f(x2)))

        if f(x0) * f(x2) < 0:
            x1 = x2
        else:
            x0 = x2

        step = step + 1
        condition = abs(f(x2)) > e

    if step > max_iter:
        print('\nEl método no convergió después de %d iteraciones' % max_iter)
    else:
        print('\nLa raíz aproximada es: %0.8f' % x2)

# Valores iniciales
x0 = 2
x1 = 3
e = 0.10
max_iter = 1000  # Número máximo de iteraciones

# Ejecutando el método
false_position(x0, x1, e, max_iter)