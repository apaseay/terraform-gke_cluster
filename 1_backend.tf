terraform { 
  cloud { 
    
    organization = "ApaseCloud_Online" 

    workspaces { 
      name = "google_gke_deploy" 
    } 
  } 
}