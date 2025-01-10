library(shiny)
#Rendu final

function(input,output,session){
#Exercice 1

  output$salutation<-renderText({
    paste0("yababa ",input$nom)
    })

#Exercice 4

output$le_texte<-renderText({
  input$x*input$y
    #Mon ami a mit x à la place de l'input choisi par le curseur, le x n'est pas sensé être une valeur fixe mais une valeur qui dépend du curseur.
  })

library(ggplot2)
#Exercice 5

  dataset <- reactive({
    get(input$dataset, "package:ggplot2")
  })
  output$summary <- renderPrint({
    summary(dataset())
  })
  output$graphe <- renderPlot({ #il y'avait écrit graphe et le_graphe, j'ai donc appelé les deux outputs "graphe"
    plot(dataset()) #on a pas appelé la reactive de la bonne manière
  }, res = 96)
}