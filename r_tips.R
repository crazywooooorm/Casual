# Update anytime, be simple, be quick.
# == ggplot
# -- a typical line plot
data %>% 
  ggplot(aes(x = year, y = pct, colour = `Ethnicity Groups`)) +
  geom_point(size = 1.4) +
  # only have lines on part of the data 
  geom_line(aes(x = year, y = pct, 
                group = interaction(`Ethnicity Groups`, 
                                    (year == 2006), 
                                    (year == 2009))), size = 0.8) +
  # cut the plot
  coord_cartesian(ylim = c(0, 0.1)) +
  scale_x_continuous(name = "Year", 
                     breaks = unique(flavor_race_data$year)) +
  scale_y_continuous(name = "",
                     labels = scales::percent) +
  scale_color_manual(breaks = c("type1", "type2", "type3"),
                     values=c("#1f78b4", "#e31a1c", "#e6ab02")) +
  theme_classic() +
  # lab manipulation
  theme(axis.text.x = element_text(angle = 45, vjust = .5),
        legend.position = "none") +
  scale_fill_discrete(guide = FALSE) +
  labs(title = "") 


# == Functions
# -- sapply usage and usage of `[`
tt <- list(1:3, 4:9, 10:12)
sapply(tt, `[`, 2)

# -- calling function with args
do.call(mean, list(1:10, na.rm = T))

# -- use of "{", coerce a function, but can't take group_by 
data.frame(a = rep(c("x", "y"), 10), b = 1:20, c = rep(1:5, 4)) %>% 
  {t.test(.$b, .$c)}


# == regex
# -- extract all numbers from string
stringr::str_extract(target_string, "\\-*\\d+\\.*\\d*")

# -- split one column into two
tidyr::extract(var, c("day", "question"), "(D[0-9]+)(Q.+)?")
tidyr::extract(var, c("var", "category", "question_num"),
               "(.*)_(Pattern1|Pattern2)(\\d+)?")





