sidebar <- dashboardSidebar(
  sidebarMenu(
    
    #### ---> FIND CODE: This piece of code creates a menu item 
    #### that creates the Fish Size tab
    menuItem("Fish Size", tabName = "size", icon = icon("dashboard")),
    #### END CODE <---
    
    #### ---> FIND CODE: This piece of code creates a menu item
    #### that creates the Population tab
    menuItem("Population", tabName = "pop", icon = icon("globe"))
    #### END CODE <---
    
  )
)
