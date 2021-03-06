## File Name: invariance_alignment_center_parameters.R
## File Version: 0.10

invariance_alignment_center_parameters <- function(alpha0, psi0, center,
    reparam=FALSE, convert=FALSE)
{
    if (reparam & convert){
        alpha0 <- alpha0 * psi0
    }
    if (center){
        alpha0 <- alpha0 - mean(alpha0)
        log_psi <- log(psi0)
        psi0 <- exp(log_psi - mean(log_psi))
    }
    #--- output
    res <- list(alpha0=alpha0, psi0=psi0)
    return(res)
}
