using RoughSurface, Documenter
using Test

@testset "RoughSurface.jl" begin
    # Write your tests here.
    file_path = ["test.txt", "test.csv", "test.jld2"]
    surf = collect(reshape(1:3*3,3,3))
    @testset for i = 1:length(file_path)
        write_surf(file_path[i], surf)
        surf_read = read_surf(file_path[i])
        @test surf_read == surf
        rm(file_path[i])
    end # for
    # 文档
    doctest(RoughSurface)
end
