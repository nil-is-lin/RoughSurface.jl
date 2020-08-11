```@meta
CurrentModule = RoughSurface
```

# RoughSurface

## Functions

```@autodocs
Modules = [RoughSurface]
```
## Example
```@example
using RoughSurface

surf_mat = rand(Float64, (480, 640))
file_path = "test.csv"
# 将表面数据surf_mat写入当前路径的test.csv文件
write_surf(file_path, surf_mat)
# 从当前路径的test.csv文件读取surf_mat
surf_read = read_surf(file_path)
# 显示表面数据surf_mat
show_surf(surf_mat)
nothing #hide
```

## Index

```@index
```
