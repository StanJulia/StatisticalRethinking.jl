using StatisticalRethinking, Documenter

DOC_ROOT = sr_path("..", "docs")
DocDir =  sr_path("..", "docs", "src")

page_list = Array{Pair{String, Any}, 1}();
append!(page_list, [Pair("StatisticalRethinkingJulia", "srgithub.md")])
append!(page_list, [Pair("Acknowledgements", "acknowledgements.md")]);
append!(page_list, [Pair("References", "references.md")])
append!(page_list, [Pair("Functions", "index.md")])

makedocs(
    format = Documenter.HTML(prettyurls = haskey(ENV, "GITHUB_ACTIONS")),
    root = DOC_ROOT,
    modules = Module[],
    sitename = "StatisticalRethinking.jl",
    authors = "Rob Goedman and contributors.",
    pages = page_list,
)

devurl = "dev"
deploydocs(
    root = DOC_ROOT,
    repo = "github.com/StatisticalRethinkingJulia/StatisticalRethinking.jl.git",
    devbranch = "master",
    push_preview = true,
    devurl=devurl,
    versions = ["stable"=> "v^", "v#.#",
                "latest"=>devurl]
)
