terraform { 
  cloud { 
    
    organization = "MyDevproject" 

    workspaces { 
      name = "CLI-work-Flow" 
    } 
  } 
}

resource "time_sleep" "wait_10_seconds" { 
  create_duration = "10s"
  
}