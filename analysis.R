precinct.26 = read.csv("state-college-east-3-precinct-26.csv", header=TRUE)

library(ggplot2)

# Votes cast
p1 = qplot( x=year, y=cast, 
            data=precinct.26, 
            color=type, 
            geom=c("point", "line")
            )

p1 + labs(title="Votes Cast By Year and Election Type -- Precinct 26: State College East 3")
ggsave(filename="votes-cast.png", plot=p1)

# Turnout
p2 = qplot( x=year, y=cast/registered, 
              data=precinct.26, 
              color=type, 
              geom=c("point", "line")
)
p2 + labs(title="Turnout Proportion By Year and Election Type -- Precinct 26: State College East 3")
ggsave(filename="turnout-p.png", plot=p2)

# Registered
p3 = qplot( x=year, y=registered, 
            data=precinct.26, 
            color=type, 
            geom=c("point", "line")
)
p3 + labs(title="Registered Voters By Year and Election Type -- Precinct 26: State College East 3")
ggsave(filename="registered.png", plot=p3)


