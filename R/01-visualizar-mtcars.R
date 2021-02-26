library("sessioninfo")
library("here")
library("ggplot2")

print("Soy athena")
dir.create(here::here("figuras"), showWarnings = FALSE)

pdf(here::here("figuras", "mtcars_gear_vs_mpg.pdf"), useDingbats = FALSE)
ggplot(mtcars, aes(group = gear, y = mpg)) + geom_boxplot()
dev.off()

options(width = 120)
sessioninfo::session_info()
