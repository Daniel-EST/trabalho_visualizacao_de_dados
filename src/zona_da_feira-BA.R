require(ggplot2)

data = read.csv('../datasets/nascidos_zona_da_feira.csv')

data$Mes = factor(data$Mes,levels = c("Março", "Dezembro"))

ggplot(data, aes(fill=Mes, y=Nascimentos, x=Ano)) + 
  geom_bar(position="dodge", stat="identity")
