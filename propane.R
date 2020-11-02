c7 = 0.00060696
c6 = -0.0033566
c5 = -0.058757
c4 = 1.0306
c3 = -7.5884
c2 = 33.258
# c7 d^6 + c6 d^5 + c5 d^4 + c4 d^3 + c3 d^2 + c2 d =0
roots = polyroot(c(c2,c3,c4,c5,c6,c7))
cat("VdW Density: ",roots,"\n")

