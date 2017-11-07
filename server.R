MusicPred <- function(mood){ 
        if (mood=="happy") "Happy by Pharrell Williams" 
        else if (mood=="sad") "Poles Apart by Pink Floyd" 
        else if (mood=="alone") "The Vengeful One by Disturbed" 
        else if (mood=="angry") "Coming Down by Five Finger Death Punch" 
        else if (mood=="bitchy") "PIMP by 50 Cent" 
        else if (mood=="blank") "Stairway to Heaven by Led Zeppelin" 
        else if (mood=="confused") "Dazed and Confused by Led Zeppelin" 
        else if (mood=="depressed") "Wash it all away by Five Finger Death Punch" 
        else if (mood=="energetic") "Time by Wintersun" 
        else if (mood=="geeky") "Big Bang Theory Theme Song" 
        else if (mood=="high") "Anything from Bob Marley" 
        else if (mood=="lazy") "The Lazy Song by Bruno Mars" 
        else if (mood=="pleased") "The Pride by Five Finger Death Punch" 
} 
 

MoviePred <- function(movie){ 
         if (movie=="action") "Dark Knight" 
         else if (movie=="musicals") "Evita " 
         else if (movie=="biopic") "Shine " 
         else if (movie=="period") "The Notebook" 
         else if (movie=="romance") "The Best of Me" 
         else if (movie=="animation") "Hotel Transilvania " 
         else if (movie=="science fiction") "Interstallar " 
         else if (movie=="cult") "Inception" 
         else if (movie=="disaster") "Armageddon " 
         else if (movie=="spy") "Mission: Impossible 3" 
         else if (movie=="drama") "The Deer Hunter " 
         else if (movie=="fantasy") "Lord of the Rings" 
         else if (movie=="thriller") "The Silence of the Lambs" 
         else if (movie=="gangster") "The Godfather" 
         else if (movie=="war") "Dunkirk" 
         else if (movie=="westerns") "Unforgiven " 
         else if (movie=="horror") "The Conjuring 2" 
  } 
          


shinyServer( 
         function(input, output) { 
                 output$inputValue <- renderPrint({input$mood}) 
                 output$prediction <- renderPrint({MusicPred(input$mood)}) 
                  
                 output$inputValue2 <- renderPrint({input$movie}) 
                 output$prediction2 <- renderPrint({MoviePred(input$movie)}) 
         } 
) 
