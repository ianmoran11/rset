
create_mon <- function(positions, directions, name = NULL){
   # 
  # browser()
 
   directions <- test_name <- c("one","two")
   positions <- test_name <- c("one","two")
   
   substitute(positions) 
  
   
  if(is.null(name)){
    name <- sample(letters,5) %>% paste(collapse = "")
  }
  
  positions_name <- substitute(positions) 
  directions_name <- substitute(directions) 
  
  mon <- 
    list2(
      name = name
      ,expression_txt = paste0("(",positions_name,")*y^(",directions_name,")")
      ,positions = 
        list2(
          name = positions_name
          ,values =  positions
          ,dims = 
          )
      ,directions = 
        list2(
          name = directions_name
          ,values =  directions
          )
        )
  
  class(mon) <- c("mon", class(mon))
  
  return(mon)
}


add_mons <- function(mon1,mon2, name = NULL){
  # browser()
  if(is.null(name)){
    name <- sample(letters,5) %>% paste(collapse = "")
  }
  poly <- 
    list2(
      name = name,
      operation = "+",
      expression_txt = paste0("(",mon1$expression_txt,")+(",mon2$expression_txt,")"),
      node_left = 
        list(mon1),
      node_right = 
        list(mon2)
      )
  
  class(poly) <- c("poly", class(poly))
  return(poly)
}
