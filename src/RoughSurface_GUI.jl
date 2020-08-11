using PyCall
using Conda

if PyCall.conda
    Conda.add_channel("conda-forge")
    Conda.add("pyvista")
end # if

function __init__()
    py"""
    import pyvista as pv
    import numpy as np

    def show_surf(surf_mat):
        mesh = pv.UniformGrid()
        if surf_mat.shape[1] == 3:
            # 数据为点的三个坐标分量
            mesh.origin = (surf_mat[0, 0], surf_mat[0, 1], surf_mat[0, 2])
            n_x = len(np.unique(surf_mat[:, 0]))
            n_y = len(np.unique(surf_mat[:, 1]))
            Z = surf_mat[:, 2].reshape(n_y, n_x)
            if surf_mat[0, 0] == surf_mat[0, 1]:
                # X = surf_mat[:, 0].reshape(n_y, n_x)
                delta_x = surf_mat[0+n_y, 0]-surf_mat[0, 0]
                # Y = surf_mat[:, 1].reshape(n_y, n_x)
                delta_y = surf_mat[1, 1]-surf_mat[0, 1]
            mesh.spacing = (delta_x, delta_y, 0)
        else:
            # 仅包含Z方向高程值, 则默认间距为1, 初始点为坐标原点(0, 0, 0)
            mesh.origin = (0, 0, 0)
            mesh.spacing = (1, 1, 0)
            n_x, n_y = surf_mat.shape
            Z = surf_mat
        mesh.dimensions = np.array([n_y, n_x, 1])
        mesh.point_arrays["values"] = Z.flatten()
        mesh = mesh.warp_by_scalar()
        plotter = pv.Plotter()
        plotter.add_mesh(mesh, show_edges=True, opacity=0.7)
        plotter.show()
    """
end # function
