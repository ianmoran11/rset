rm(list = ls())
library("tidyverse")
library("Hmisc")
library("rlang")
library("typed")
library("pryr")
library("data.tree")


# Exampels of directions 
### Set, Reals, Integers, Natural numbers, probabilit 
### with constraint / interval
### Products and sums (expression)

# Operations 
## Dependent lens / morphism (in poly) / natural transformation / pair q positions with p positions, then p directions with q directions
## Categorical product : (all pairs of positions and disjoin product of directions) (X)
## Parallel product: (all pairs of positions and all pairs of directions) (O)
## Composition product: pair p directions with q positions (all possible combinations, incl duplication),

# Laws 
## Distributivity

# Visualisations
## Corrola | equation | string diagram | polybox

# Information
## Ennumeration of options


## Dependent lens / morphism (in poly) / natural transformation / pair q positions with p positions, then p directions with q directions
## Categorical product : (all pairs of positions and disjoin product of directions) (X)
## Parallel product: (all pairs of positions and all pairs of directions) (O)
## Composition product: pair p directions with q positions (all possible combinations, incl duplication),


# Set operations / Alegraic operations 
## set = vector/number/ 

# domain
# filter
# relation
# generator
# bounds 
# length


# comprehension
# * output expression
# * generator expression
# * guard 
# * local definition (let)


# Types of expression 

list(
  
  
)

make_set <- function(name = NULL, type = NULL , generator_expression = NULL , predicate_expression = NULL){
 list2(
     name  = name
   , type = type
   , generator_expression = generator_expression
   , predicate_expression = predicate_expression    
 ) 
}

even <- make_set("evens", "integer", generator_expression =  \(N)N*2, predicate_expression = \(y)(y %% 2)==0)
years <- make_set("evens", "integer", generator_expression =  \(N)N*2, predicate_expression = \(y)(y %% 2)==0)

even$generator_expression(1:1000) %>% even$predicate_expression() %>% all


# Define a custom Set class
Set <- setClass("Set",
                slots = c(elements = "list"))

elements <- list("a", "b", "c")

# Constructor function for creating a new Set object
setConstructor <- function(elements = list()) {
  new("Set", elements = unique(elements))
}





list.files("r",full.names = T) %>% map(source)

test_name <- c("one","two")

mon <-  create_mon(test_name,test_name, "hello")
mon

add_mons(
create_mon(test_name,test_name, "hello"),
create_mon(test_name,test_name, "hello")
) %>% .$expression_txt



mon$expression_txt


create_mon(23,5) %>% str
add_mons(create_mon(23,5), create_mon(23,5)) %>% .$expression_txt

add_mons(create_mon(23,5), add_mons(create_mon(23,5), create_mon(23,5)))
add_mons(create_mon(23,5), create_mon(23,5)) %>% str()
add_mons(create_mon(23,5), create_mon(23,5)) %>% list.tree()

add_mons(create_mon(23,5), create_mon(23,5)) %>% list.tree()
add_mons(create_mon(23,5), create_mon(23,5)) %>% ast()


ast(5*(4+5)/x)

  t <- eval_tidy("5 * (j + j + j * 5)^4")

xob <- 
  lobstr::ast(
    t
  )
lobstr:::ast_tree


str(xob) 

xob



library(lobstr)
