# RoughSurface

<!-- [![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://nil-is-lin.github.io/RoughSurface.jl/stable) -->
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://nil-is-lin.github.io/RoughSurface.jl/dev)
[![Build Status](https://travis-ci.com/nil-is-lin/RoughSurface.jl.svg?branch=master)](https://travis-ci.com/nil-is-lin/RoughSurface.jl)
[![Coverage](https://codecov.io/gh/nil-is-lin/RoughSurface.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/nil-is-lin/RoughSurface.jl)
[![License](https://img.shields.io/github/license/JuliaFEM/JuliaFEM.jl.svg)](https://github.com/JuliaFEM/JuliaFEM.jl/blob/master/LICENSE.md)

## Table of Contents

- [简介](#introduction)
- [安装](#install)
- [使用](#usage)
	- [表面形貌的参数化表征](#generator)
	- [表面形貌的参数化生成](#generator)
	- [表面形貌的接触计算](#contact)
- [相关工作](#related-efforts)
- [维护者](#maintainers)

## <span id="introduction">简介</span>
关于工程粗糙表面相关, 计划是做一个基础的包, 整理并重现一些文章的结果.

## <span id="install">安装</span>

现在才刚刚开始, 基本上是整个项目都是空的, 所以并没有什么安装必要 :wink:

## <span id="usage">使用</span>

注意: 可视化的时候通过PyCall调用了Pyvista包, 最好是参考[PyCall的设置](https://github.com/JuliaPy/PyCall.jl), 通过设置`ENV["PYTHON"]`变量来将Python版本设置为系统常用版本. 如果不设置会使用Julia­s pecific Python, 可能出现包缺失的问题, 虽然可以利用Conda.jl来安装, 但何必搞两个切来切去呢 :sob:.
### 计划完成的内容
- 表面参数化表征
- 表面参数化生成
- 表面接触计算相关

## <span id="maintainers">目前维护者</span>

## <span id="related-efforts">相关工作</span>
- 粗糙表面生成
	- [MySimLabs](http://www.mysimlabs.com/surface_generation.html) - Rough surface generation & analysis.
	- [mars_algorithm](https://github.com/tj16x/mars_algorithm) - Multi-scale Anisotropic Rough Surface (MARS) Algorithm.
	- [Surface generator: artificial randomly rough surfaces ](https://www.mathworks.com/matlabcentral/fileexchange/60817-surface-generator-artificial-randomly-rough-surfaces) - Generates randomly rough fractal surfaces with different fractal (Hurst) parameters.
- 粗糙表面相关计算
	- [rough_surfaces](https://github.com/plang85/rough_surfaces) - A Python3 module for the analysis, elastic contact and fluid flow simulation of rock fractures.
	- [ContactAngle-Curvature-Roughness](https://github.com/AhmedAlratrout/ContactAngle-Curvature-Roughness) - Automatic measurements of contact angle, interfacial curvature and surface roughness in pore-scale 3D-images.
- 有限元相关
	- [FEALPy](https://github.com/weihuayi/fealpy) - Finite Element Analysis Library in Python.
	- [JuliaFEM.jl](https://github.com/JuliaFEM/JuliaFEM.jl) - an open source solver for both industrial and academia usage.
	- [Abapy](https://github.com/lcharleux/abapy) - tools to build, postprocess and plot automatic finite element simulations using Abaqus.
	- [MFEM](https://github.com/mfem/mfem) - Finite Element Discretization Library
- 优化算法相关
	- [PyCG_DESCENT](https://github.com/martiniani-lab/PyCG_DESCENT) - Python Conjugate Gradient Descent.
	- [Optim.jl](https://github.com/JuliaNLSolvers/Optim.jl) - Univariate and multivariate optimization in Julia.
- Dock窗体
	- [Qt-Advanced-Docking-System](https://github.com/githubuser0xFFFF/Qt-Advanced-Docking-System) - Qt Advanced Docking System lets you create customizable layouts using a full featured window docking system similar to what is found in many popular integrated development environments (IDEs) such as Visual Studio.
