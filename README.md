# Heat Equation
- Activities in scientific computing lab - Heat equation 
- Dec. 3, 2019

## 1. Explicit - Forward Difference
- alpha = dt/h^2 <= 0.5
- Calculate 'Nx' times -> O(N)
- First order accuracy in time, second order accuracy in space i.e o(dt)

## 2. Implicit - Backward Difference
- alpha <= inf
- Calculate 'Nx^2' times -> O(N^2)
- First order accuracy in time, second order accuracy in space i.e o(dt)  

## 3. Crank - Nicolson (theta-method)
- alpha <= inf
- Calculate 'Nx^2 + Nx' times -> O(N^2 + N)
- Second order accuracy in time and space i.e o(dt^2)
