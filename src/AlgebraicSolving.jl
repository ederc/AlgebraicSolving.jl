module AlgebraicSolving

greet() = print("AlgebraicSolving -- a package for algebraic solving based on msolve")

#= io =#
include("imports.jl")
include("exports.jl")
#= types =#
include("types.jl")
#= functionality =#
include("interfaces/nemo.jl")
include("algorithms/groebner-bases.jl")
include("algorithms/solvers.jl")
#= f5 =#
include("f5/typedefs.jl")
include("f5/monomials.jl")
include("f5/hashtable.jl")
include("f5/update.jl")
include("f5/symbolic_pp.jl")
include("f5/matrix.jl")
#= examples =#
include("examples/katsura.jl")

end # module AlgebraicSolving
