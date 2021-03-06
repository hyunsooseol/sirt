## File Name: xxirt_print_progress.R
## File Version: 0.03

xxirt_print_progress <- function(dev, dev0, dev00, pen_val, conv0, conv1,
        iter, verbose1, verbose2, verbose_index)
{
    if (verbose1){
        cat( paste( "   Optimization function value=", round( dev, 4 ),
            if (iter > 1 ){ " | Change=" } else {""},
            if( iter > 1){ round( - dev + dev0, 6 )} else { ""}    ,"\n",sep="") )
        cat( paste( "   Deviance=",
                paste( round( dev00, 4), collapse=" " ), "\n", sep=""))
        cat( paste( "   Penalty function value=",
                paste( round( pen_val, 6), collapse=" " ), "\n", sep=""))
        cat( paste( "    Maximum item parameter change=",
                paste( round( conv0, 6), collapse=" " ), "\n", sep=""))
        cat( paste( "    Maximum theta distribution parameter change=",
                paste( round( conv1, 6), collapse=" " ), "\n", sep=""))
        utils::flush.console()
    }
    if (verbose2){
        v1 <- paste0( verbose_index, " | ",
                "Iteration=", iter, " | Optimization function value=",
                round(dev,4), "\n")
        cat(v1)
        utils::flush.console()
    }
}
