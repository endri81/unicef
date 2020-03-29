library(shiny)
library(shinydashboard)

# Define UI for application
ui <- dashboardPage(
  dashboardHeader(title = "TË DHËNAT STATISTIKORE PËR TË DREJTAT DHE MBROJTJEN E FËMIJËVE",
                  titleWidth = 920),
  
  dashboardSidebar(
    width = 350,
    sidebarMenu(
      menuItem("Mbrojtja sociale", tabName = "menu_1",
      menuSubItem("Martesat deri 18 vjeç", tabName = "sub_1"), 
      menuSubItem("Fëmijët në nivel varfërie relative", tabName = "sub_2"),
      menuSubItem("Numri i fëmijëve në familje me ndihmë ekonomike", tabName = "sub_2"),
      menuSubItem("Numri i fëmijëve të shpallur të braktisur", tabName = "sub_1"), 
      menuSubItem("Numri i fëmijëve të birësuar gjatë vitit", tabName = "sub_2"),
      menuSubItem("Vdekshmëria foshnjore", tabName = "sub_2"),
      menuSubItem("Numri i vdekjeve të fëmijëve deri 1 vjeç", tabName = "sub_1"), 
      menuSubItem("Numri i fëmijëve në nevojë për mbrojtje", tabName = "sub_2"),
      menuSubItem("Numri i fëmijëve 16-18 vjeç të punësuar me aksidente", tabName = "sub_2"),
      menuSubItem("Numri i fëmijëve punëmarrës sipas IP", tabName = "sub_2"),
      menuSubItem("Administrata e Bashkise", tabName = "sub_2")),
      
      menuItem("Arsimi dhe zhvillim i hershëm", tabName = "menu_2",
               menuSubItem("Numri i fëmijëve 0-3 vjeç në çerdhe", tabName = "sub_1"),
               menuSubItem("Përqindja e fëmijëve 3-6 vjeç në kopësht vs numrit total", tabName = "sub_1"), 
               menuSubItem("Përqindja e fëmijëve në klasën e parë vs numrit total", tabName = "sub_2"),
               menuSubItem("GER dhe NER", tabName = "sub_2"),
               menuSubItem("Përqindja e braktisjes shkollore", tabName = "sub_1"), 
               menuSubItem("Përqindja e nxënesve përsëritës", tabName = "sub_2")),
      
      
      menuItem("Mbrojtja e fëmijëve nga dhuna", tabName = "menu_2",
               menuSubItem("Numri i fëmijëve në familje kujdestare", tabName = "sub_1"),
               menuSubItem("Niveli i vdekshmërisë nën 5 vjeç", tabName = "sub_1"), 
               menuSubItem("Numri i vetëvrasjeve të fëmijeve", tabName = "sub_2"),
               menuSubItem("Numri i tentativave për vetëvrasje", tabName = "sub_2"),
               menuSubItem("Numri i fëmijëve viktima të trafikimit", tabName = "sub_1"), 
               menuSubItem("Numri i fëmijëve viktima të mundshme trafikimit", tabName = "sub_2"),
      menuSubItem("Numri i fëmijëve refugjatë", tabName = "sub_1"),
      menuSubItem("Numri i fëmijeve që kanë kerkuar azil në Shqipëri", tabName = "sub_1"), 
      menuSubItem("Numri i fëmijëve me masa mbrojtjeje", tabName = "sub_2"),
      menuSubItem("Numri i fëmijëve që kanë raportuar dhune", tabName = "sub_2"),
      menuSubItem("Numri i fëmijëve viktima të dhunës", tabName = "sub_1")),
      
      
      menuItem("Shëndetesia", tabName = "menu_2",
               menuSubItem("Vajzat deri 18 vjeç që kanë lindur", tabName = "sub_1"),
               menuSubItem("Numri i fëmijëve me pagesë për aftesinë e kufizuar", tabName = "sub_1"), 
               menuSubItem("Numri i fëmijëve në inst rezidenciale", tabName = "sub_2"),
               menuSubItem("Niveli i vdekshmërisë neonatale", tabName = "sub_2"),
               menuSubItem("Niveli i vdekshmërisë amtare", tabName = "sub_1"), 
               menuSubItem("Përqindja e lindjeve të asistuara", tabName = "sub_2"),
               menuSubItem("Fëmijët e lindur nën peshë", tabName = "sub_1"),
               menuSubItem("Incidenca e sëmundjeve tek fëmijët", tabName = "sub_1"), 
               menuSubItem("Gra shtatzëna me HIV-pozitiv", tabName = "sub_2"),
               menuSubItem("Fëmijët me HIV-pozitiv", tabName = "sub_2"),
               menuSubItem("Përqindja e fëmijëve target që vaksinohen", tabName = "sub_2"),
               menuSubItem("Fëmijët e lindur nën peshë", tabName = "sub_1"),
               menuSubItem("Përqindja e fëmijeve qumësht gjiri", tabName = "sub_1"), 
               menuSubItem("Përqindja e foshnjave 6-24 muaj me gji", tabName = "sub_2"),
               menuSubItem("Përqindja e fëmijëve nën 5 vjeç me rritje te prapambetur", tabName = "sub_2"),
               menuSubItem("Përqindja e fëmijëve nën 5 vjeç mbipeshë", tabName = "sub_1")),
      
      menuItem("Aksesi në drejtesi", tabName = "menu_2",
               menuSubItem("Numri i ankesave të vlefshme të trajtuara nga KMD", tabName = "sub_1"),
               menuSubItem("Numri i ankesave të vlefshme të trajtuara nga KDIMDP", tabName = "sub_1"), 
               menuSubItem("Numri i ankesave të vlefshme të trajtuara nga AP",  tabName = "sub_1")),
      
      menuItem("Drejtësia për të mitur", tabName = "menu_2",
               menuSubItem("Fëmijët që jetojnë në Shqipëri", tabName = "sub_1"),
               menuSubItem("Numri fëmijëve viktima regjistruar nga policia", tabName = "sub_1"), 
               menuSubItem("Numri fëmijeve autorë të dyshuar të veprës penale",  tabName = "sub_1"),
               menuSubItem("Numri i fëmijëve 14-17 vjeç në paraburgim", tabName = "sub_1"),
               menuSubItem("Numri i fëmijëve 14-18 vjeç në shërbimi i provës", tabName = "sub_1"), 
               menuSubItem("Numri i fëmijëve 14-18 vjeç të pandehur",  tabName = "sub_1"),
               menuSubItem("Numri i fëmijëve viktima të veprave penale", tabName = "sub_1"), 
               menuSubItem("Numri i fëmijëve autorë të dyshuar të veprave penale",  tabName = "sub_1"),
               menuSubItem("Numri i fëmijëve viktima të veprave penale të trajtuara në gjykatë",  tabName = "sub_1"),
               menuSubItem("Numri i fëmijëve të trajtuar me urdhër mbrojtje", tabName = "sub_1"), 
               menuSubItem("Numri i fëmijëve me ndihmë ligjore falas",  tabName = "sub_1") )
    
      )
    )
  ,
  
  dashboardBody(
    tabItems(
      tabItem(tabName = "menu_1", 
              fluidRow(
                h1("Homepage 1")
              )
      ),
      tabItem(tabName = "menu_2", 
              fluidRow(
                h1("Homepage 2")
              )
      ),
      tabItem(tabName = "sub_1", 
              fluidRow(
                h1("Sub Menu Page 1")
              )
      ), 
      tabItem(tabName = "sub_2", 
              fluidRow(
                h1("Sub Menu Page 2")
              )
      )
    )
  )
)