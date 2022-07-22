\name{climate}
\alias{climate}
\alias{precip}
\alias{avg.temp}
\alias{avg.high.temp}
\alias{avg.low.temp}
\alias{abs.low.temp}

\docType{data}
\title{
A sample of world climate data
}
\description{
Climate metadata, temperature (in degrees celsius) and precipitation (in mm).  Seperate files exist for average temperature, average low temperature, average high temperature, and absolute low temperature.  Absolute low temperature was not available for Kuala Trengganu Malaysia, and its absolute minimimus are given as the average low temperatures.
}
\usage{data(precip)}

\format{
  A data frame with 12 observations on the following 26 variables.
  \describe{
    \item{\code{Aberdeen.WA.USA}}{Weather station ABERDEEN 20 NNE, GRAYS HARBOR COUNTY is at about 47.26\eqn{^\circ}N 123.70\eqn{^\circ}W. Elevation about 132m above sea level. Temp data from 1961-1990, precip from 1927-1995 derived from NCDC TD 9641 Clim 81 1961-1990 Normals.}
    \item{\code{Alice.Springs.Australia}}{Weather station ALICE SPRINGS AMO WAS 01 is at about 23.82\eqn{^\circ}S 133.88\eqn{^\circ}E. Elev about 546m about above sea level. Temp data from 1941-1992 derived from GHCN 2 Beta, Precip data from 1874-1990. }
    \item{\code{Bangkok.Thailand}}{Weather station BANGKOK is at about 13.73\eqn{^\circ}N 100.50\eqn{^\circ}E. Elevation 2m above sea level
Temp data from 1840-1990, Precip data from 1882-1989, derived from GHCN 1.}
    \item{\code{Berkeley.CA.USA}}{Weather station BERKELEY is at about 37.86\eqn{^\circ}N 122.26\eqn{^\circ}W. Elevation 91m above sea level.
Temp data from 1961-1990, Precip data from 1886-1989.  Data derived from NCDC TD 9641 Clim 81.}
    \item{\code{Caravelas.Brazil}}{Weather station CARAVELAS is at about 17.73\eqn{^\circ}S 39.20\eqn{^\circ}W.  Elevation about 4m above sea level. Temp and Precip data from 1961-1990 derived from GHCN 1. 
}
    \item{\code{Corvallis.OR.USA}}{Weather station CORVALLIS STATE UNIV, BENTON COUNTY is at about 44.63\eqn{^\circ}N 123.20\eqn{^\circ}W. Elevation about 68m above sea level. Temp data from 1961-1990, Precip from 1910-1995 derived from NCDC TD 9641 Clim 81 1961-1990 Normals. 
}
    \item{\code{Dakhla.Egypt}}{Weather station DAKHLA is at about 25.48\eqn{^\circ}N 29.00\eqn{^\circ}E. Height about 106m above sea level
Data from 1951-1988 derived from GHCN 1.}
    \item{\code{Death.valley.CA.USA}}{Weather station DEATH VALLEY, INYO COUNTY is at about 36.46\eqn{^\circ}N 116.86\eqn{^\circ}W. Elevation about -59m with respect to sea level
Temp data from 1961-1990, precip from 1961-1995 derived from NCDC TD 9641 Clim 81 1961-1990 Normals.}
    \item{\code{Fairbanks.AK.USA}}{Weather station FAIRBANKS INTL AP, INTERIOR BSN is at about 64.81\eqn{^\circ}N 147.86\eqn{^\circ}W. Elevation about 132m above sea level.
Temp data from 1961-1990, precip from 1949 and 1995 derived from NCDC TD 9641 Clim 81 1961-1990 Normals.}
    \item{\code{Greenwich.UK}}{Weather station GREENWICH/MARITIME M is at about 51.50\eqn{^\circ}N 0.00\eqn{^\circ}E. Elevation about 7m above sea level data 
Temp data from 1841-1960, Precip from 1841-1960, Summaries from GHCN 1: The Global Historical Climatology Network, version 1.
}
    \item{\code{Hamburg.Germany}}{Weather station HAMBURG-FUHLSBUETTEL is at about 53.63\eqn{^\circ}N 10.00\eqn{^\circ}E. Elev about 16m above sea level. Temp and Precip data from 1951-1990 derived from GHCN 1. }
    \item{\code{Jackson.WY.USA}}{Weather station JACKSON, TETON COUNTY is at about 43.48\eqn{^\circ}N 110.76\eqn{^\circ}W. Elevation about 1898m above sea level. Temp data from 1961-1990 derived from NCDC TD 9641 Clim 81 1961-1990 Normals.  Precip data from 1931-1995 }
    \item{\code{Kuala.Trengganu.Malaysia}}{Weather station KUALA TRENGGANU is at about 5.38\eqn{^\circ}N 103.10\eqn{^\circ}E. Elevation about 6m above sea level. Temp data from 1961-1970, Precip data from 1930 and 1980 derived from GHCN 1.   
}
    \item{\code{Lawrence.KA.USA}}{Weather station LAWRENCE, DOUGLAS COUNTY is at about 38.96\eqn{^\circ}N 95.26\eqn{^\circ}W. Elevation about 298m above sea level. Temp data from 1961-1990 derived from NCDC TD 9641 Clim 81 1961-1990 Normals.}
    \item{\code{Lima.Peru}}{Weather station LIMA-CALLAO/AEROP. INTER is at about 12.00\eqn{^\circ}S 77.09\eqn{^\circ}W. Elevation about 13m above sea level. Temp data from 1910-1990, precip from 1950-1990 derived from GHCN 1.  

}
    \item{\code{Manaus.Brazil}}{Weather station MANAUS is at about 3.13\eqn{^\circ}S 60.00\eqn{^\circ}W. 
Temp data from 1910-1988, Preicp from 1872-1989 derived from GHCN 1. }
    \item{\code{Mombasa.Kenya}}{Weather station MOMBASA is at about 4.03\eqn{^\circ}S 39.60\eqn{^\circ}E. Elevation about 57m above sea level.
Temp data 1931-1990, Precip from 1890-1985 derived from GHCN 1.  
}
    \item{\code{Moscow.Russia}}{Weather station MOSKVA is at about 55.80\eqn{^\circ}N 37.60\eqn{^\circ}E. Elevation about 156m above sea level. Temp data from 1779-1991, Precip from 1820-1989.  MOSKVA data derived from GHCN 2 Beta. 
}
    \item{\code{Muree.Pakistan}}{Weather station MURREE is at about 33.90\eqn{^\circ}N 73.40\eqn{^\circ}E. Elevation about 2169m above sea level. Temp data from 1936-1980, Precip from 1947-1971.  Data derived from GHCN 2 Beta. 
}    
    \item{\code{Osaka.JPN}}{Weather station OSAKA is at about 34.68\eqn{^\circ}N 135.52\eqn{^\circ}E. Elevation about 23m feet above sea level.  Temp data from 1883-1990, Precip from 1883-1990.  Data derived from GHCN 1. 
}  
    \item{\code{Pocatello.ID.USA}}{Weather station POCATELLO MUNICIPAL, POWER COUNTY is at about 42.91\eqn{^\circ}N 112.60\eqn{^\circ}W. Elevation 1357m above sea level.  Temp data from 1961-1990 derived from NCDC TD 9641 Clim 81 1961-1990 Normals.  Precip data from 1917-1995.}
    \item{\code{Ponza.Italy}}{Weather station PONZA is at about 40.92\eqn{^\circ}N 12.90\eqn{^\circ}E. Elevabout about 184m above sea level.  
Temp and Precip data from 1961-1990. Summaries from GHCN 1. }
    \item{\code{San.Jose.Costa.Rica}}{Weather station SAN JOSE is at about 9.93\eqn{^\circ}N 84.00\eqn{^\circ}W. Elevation about 1172m above sea level. Temp data from 1961-1970, Preip from 1866-1982 derived from GHCN 1.}
    \item{\code{Sydney.Australia}}{Weather station SYDNEY is at about 33.86\eqn{^\circ}S 151.19\eqn{^\circ}E. Elevation 42m above sea level.
Temp data from 1859-1990, precip from 1840-1989 derived from GHCN 1.}
    \item{\code{Tulear.Madagascar}}{Weather station TULEAR is at about 23.38\eqn{^\circ}S 43.70\eqn{^\circ}E. Elevation about 8m above sea level. Temp and Precip data from 1951-1990 derived from GHCN 1.  }
    \item{\code{Turiacu.Brazil}}{Weather station TURIACU is at about 1.72\eqn{^\circ}S 45.40\eqn{^\circ}W.
Data from 1911-1984 derived from GHCN 1.}
    \item{\code{Yellowknife.Canada}}{Weather station YELLOWKNIFE A,NW is at about 62.47\eqn{^\circ}N 114.45\eqn{^\circ}W. Elev about 205m above sea level. Temp and Precip data from 1942-1990 derived from GHCN 2 Beta.}
  }
}

\source{
http://www.worldclimate.com/
http://www.myweather2.com/
}
\keyword{datasets}


