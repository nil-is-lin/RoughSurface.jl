```@meta
CurrentModule = RoughSurface
```

# RoughSurface

```@index
```

```@autodocs
Modules = [RoughSurface]
```

## Functions

```@docs
greet()
```

```jldoctest
a = 1
b = 2
a + b

# output

3
```

```math
\begin{aligned}
\nabla\cdot\mathbf{E}  &= 4 \pi \rho \\
\nabla\cdot\mathbf{B}  &= 0 \\
\nabla\times\mathbf{E} &= - \frac{1}{c} \frac{\partial\mathbf{B}}{\partial t} \\
\nabla\times\mathbf{B} &= - \frac{1}{c} \left(4 \pi \mathbf{J} + \frac{\partial\mathbf{E}}{\partial t} \right)
\end{aligned}
```

```jldoctest
julia> a = 1
1

julia> b = 2;

julia> c = 3;  # comment

julia> a + b + c
6
```

## Index

```@index
```



- link to [Example.jl Documentation](@ref)
- link to [`func(x)`](@ref)
