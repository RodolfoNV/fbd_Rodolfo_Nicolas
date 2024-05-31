python
import math

# Función f(x)
def f(x):
    return math.sin(5*x) + math.cos(3*x)

# Intervalo inicial
xl = 2
xu = 2.2

# Precisión deseada
precision = 0.0001

# Contador de iteraciones
iteraciones = 0

# Bucle de bisección
while abs(xu - xl) > precision:
    iteraciones += 1
    xr = (xl + xu) / 2
    if f(xr) == 0:
        break
    if f(xr) * f(xl) < 0:
        xu = xr
    else:
        xl = xr
