function rank_matrix(x::Array{Float64, 3})
    xc = zeros(Int, size(x))
    for i in 1:size(x, 2)
        for j in 1:size(x, 3)
            xc[:, i, j] = Int.(ordinalrank(x[:, i, j]))
        end
    end
    xc
end

# ╔═╡ 9c97d57e-76a8-11eb-1126-7f934e864857
function trankplot(model::SampleModel; bins=30)
    x, cnames = read_samples(model; return_parameters=true, output_format=:array)
    (rank_matrix(x), cnames)
end

export
    trankplot