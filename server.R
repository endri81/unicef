
server <- function(input, output, session) {
  df <- callModule(linkedScatter, "scatters", reactive(martesa18),
                   left = reactive(c("martesa18$numri", "martesa18$mosha")),
                   right = reactive(c("martesa18$numri", "martesa18$perqindja"))
  )
  
}
