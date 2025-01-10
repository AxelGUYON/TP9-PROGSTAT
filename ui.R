library(shiny)
library(ggplot2)
#Rendu final

#Exercice 1

fluidPage(
  titlePanel("Programmation Statistique GUYON Axel"),
  
  verticalLayout(
    h1("Exercice 1"),
    textInput("nom", "Quel est ton nom ?"),
    textOutput("salutation")
),

#Exercice 4

verticalLayout(
  h1("Exercice 4"),
  h2("Le Deuxième Challenge du Curseur"),
  flowLayout(
    sliderInput("x","Si x est ",value=1,min=1,max=100),
    sliderInput("y","et y est",value=1,min=1,max=100)),
    "alors x multiplié par y est : ",
    textOutput("le_texte"),
),

#Exercice 5

verticalLayout(
  h1("Exercice 5"),
  selectInput("dataset", "Dataset", choices = c("economics", "faithfuld", "seals")),
  verbatimTextOutput("summary"),
  plotOutput("graphe") #plotOutput à la place de tableOutput pour afficher des graphiques
)
)