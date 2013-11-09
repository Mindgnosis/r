#####################################################################
## Data Munging/Scrubbing Helper functions
## interest@mindgnosis.com
######################################################

## Just easier than repeating which( is.na( obj ) ) each time
# > findNA( c( 1, NA, 3 ) )
# [1] 2
findNA <-function( obj )
{  return( which( is.na( obj ) ) ) }

## find logical by columns
# > findLogical( "c( 1, 2, 3 ) < 2" )
# [1] 1
findLogical <-function( logicStr )
{ return( which( eval( parse( text = logicStr ) ) ) ) }

# converts % that has been read as factor to float values
# > percentTxtToNumeric( c( "1%", "2%", "3%" ) )
# [1] 1
percentTxtToNumeric <-function( obj )
{  return( 0.01 * as.numeric( sub( "%", "", as.character( obj ) ) ) ) }