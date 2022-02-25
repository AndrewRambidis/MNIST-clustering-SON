include("./data_generation.jl")
include("./einsum3.jl")
include("./model.jl")


using Plots
using Clustering

import .ClusterTests
import .DataGeneration

a, compID, weight = DataGeneration.twohalfmoons(500, 0.05, pi / 5, 10)

x_ax = a[1, :]
y_ax = a[2, :]

display(Plots.scatter(x_ax, y_ax, color = compID))

## K-means as a test
#R = Clustering.kmeans(a, 2; maxiter = 200, display = :iter)
#moon_cluster_centers = R.centers
#scatter!(x_ax, y_ax, color = Clustering.assignments(R))

