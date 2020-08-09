module RoughSurface

# Write your package code here.
using DelimitedFiles, JLD2, FileIO


```@meta
CurrentModule = RoughSurface
```

export write_surf, read_surf

"""
    write_surf()

将表面数据写入文件, 默认txt文件的数据用制表符分割, csv文件的数据用``,''分割,
jld2则为直接保存二进制文件
"""
function write_surf(file_path, surf)
    # 利用splitext来得到文件类型
    file_ext = splitext(file_path)[2]
    if file_ext == ".txt"
        open(file_path, "w") do io
            writedlm(io, surf)
        end # do
    elseif file_ext == ".csv"
        open(file_path, "w") do io
            writedlm(io, surf, ',')
        end # do
    elseif file_ext == ".jld2"
        save(file_path, "surf", surf)
    else
        @warn("未知的文件类型, 保存为jld2格式")
        save(file_path*".jld2", "surf", surf)
    end

end # function

"""
    read_surf()

从文件读取表面数据, 与写入数据保持一致, 默认txt文件的数据用制表符分割, csv文件的数据用``,''分割,
jld2则为直接保存二进制文件.
"""
function read_surf(file_path)
    file_ext = splitext(file_path)[2]
    if file_ext == ".txt"
        surf = readdlm(file_path)
    elseif file_ext == ".csv"
        surf = readdlm(file_path, ',')
    elseif file_ext == ".jld2"
        surf = load(file_path,"surf")
    else
        @warn("未知的文件类型, 尝试jld2格式")
        surf = load(file_path*".jld2","surf")
    end
    return surf
end # function

end  # module
