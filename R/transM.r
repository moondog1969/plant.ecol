transM <- function (A, init, inter = 100, stage.names = c("All grps", 1:(ncol(A))),
    leg.room = 1.5, line.col = seq(1, (ncol(A) + 1)), lwd = c(3, rep(1,
        ncol(A))), lty = 1, ...)
{
    m <- matrix(nrow = ncol(A), ncol = inter)
    m[, 1] <- init
    for (i in 2:inter) {
        m[, i] <- A %*% m[, i - 1]
    }
    n <- apply(m, 2, sum)
    plot(seq(1, inter), n, type = "n", ylim = c(0, max(n) * leg.room),
        ...)
    lines(seq(1, inter), n, col = line.col[1], lwd = lwd[1], lty = lty[1])
    for (i in 1:ncol(A)) lines(seq(1, inter), m[i,], col = line.col[i +
        1], lty = ifelse(length(lty)==1,1,lty[i + 1]))
res <- list()
res$prop <- matrix(nrow = 3, ncol = inter, data = apply(m, 2,
        function(x) {
            x/sum(x)
        }), dimnames = list(stage.names[-1], seq(1, inter)))

res$prop <- matrix(nrow = 3, ncol = inter, data = apply(m, 2,
        function(x) {
            x/sum(x)
        }), dimnames = list(stage.names[-1], seq(1, inter)))


    legend("topright", legend = stage.names, lwd = c(3, rep(1,
        ncol(A))), col = line.col, lty = lty)
    res
}