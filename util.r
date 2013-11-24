## util.r contains functions for getting some nice, uniform looking plots for bike count data.
require(ggplot2)

boxplotit <- function(countdata){
    maxyval <- max(countdata$count, na.rm = TRUE)
    ggplot(countdata,(aes(x=time,y=count))) +
        geom_boxplot() + 
            scale_y_continuous(limits = c(0, maxyval),"Bike Count") + theme_minimal() + 
                scale_x_discrete("Time of Day") +
                    theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
                        ggsave(file = paste0('./img/boxplots/', countdata, '.png'))
##    plot(boxploted)
}
