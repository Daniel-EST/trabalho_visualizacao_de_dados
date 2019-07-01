require(ggplot2)
require(ggthemr)

data = read.csv2('../datasets/nascidos_zona_da_feira.csv')

data$Mes = factor(data$Mes,levels = c("Março", "Dezembro"))
 
ggthemr("dust")
ggplot(data, aes(fill=Mes, y=Nascimentos, x=Ano)) + 
  geom_bar(position="dodge", stat="identity")
