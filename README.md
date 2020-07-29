# Heat Equation (20191203 ~)
Activities in scientific computing lab - Heat equation 

## 1. Explicit - Forward Difference
- alpha = dt/h^2 <= 0.5
- Calculate 'Nx' times
- First order accuracy in time, second order accuracy in space i.e o(dt)

## 2. Implicit - Backward Difference
- alpha <= inf
- Calculate 'Nx^2' times
- First order accuracy in time, second order accuracy in space i.e o(dt)

## 3. Crank - Nicolson (theta-method)
- alpha <= inf
- Calculate 'Nx^2 + Nx' times
- Second order accuracy in time and space i.e o(dt^2)
