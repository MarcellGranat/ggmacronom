README
================

## Usage

``` r
unemployment_df <- eurostat::get_eurostat("ei_lmhr_m")
```

``` r
p <- unemployment_df %>% 
  filter(s_adj == "SA" & indic %in% c("LM-UN-F-TOT", "LM-UN-M-TOT", "LM-UN-T-TOT"),
         geo == "HU", time > as.Date("2017-01-01")) %>% 
  mutate(
    indic = case_when(
      indic == "LM-UN-F-TOT" ~ "Female",
      indic == "LM-UN-M-TOT" ~ "Male",
      indic == "LM-UN-T-TOT" ~ "Total"
    )
  ) %>% 
  ggplot() + 
  aes(time, values, color = indic) + 
  geom_line() +
  labs(x = NULL, y = NULL, color = NULL, 
       title = "Unemployment rate by sex")

p
```

![](README_files/figure-gfm/unnamed-chunk-2-1.svg)<!-- -->

``` r
p + theme_macronom()
```

![](README_files/figure-gfm/unnamed-chunk-3-1.svg)<!-- -->

``` r
p + 
  theme_macronom() + 
  scale_color_manual(values = macronom_colors(1:3))
```

![](README_files/figure-gfm/unnamed-chunk-4-1.svg)<!-- -->

### Some small manual fixes

``` r
p_pretty <- p + 
  geom_line(size = 1.7) +
  theme_macronom() + 
  scale_color_manual(values = macronom_colors(1:3)) + 
  scale_y_continuous(labels = function(x) scales::percent(x/100, accuracy = .1, decimal.mark = ",")) + 
  scale_x_date(date_breaks = "3 month") +
  theme(axis.text.x = element_text(angle = 90)) + 
    guides(
    color = guide_legend(
      override.aes = aes(size = 4)
    )
  )

p_pretty
```

![](README_files/figure-gfm/unnamed-chunk-5-1.svg)<!-- -->

### Add macronom logo and caption below

``` r
finalise_plot(p_pretty, save = F)
```

![](README_files/figure-gfm/unnamed-chunk-6-1.svg)<!-- -->

## Installation

To install the following package, please use:

``` r
# install.packages(devtools)
devtools::install_github("MarcellGranat/ggmacronom")
```

Since we decided to use `Roboto` font to our figures and it does not
installed automaticly in R, you will need to download the
[font](https://fonts.google.com/specimen/Roboto) & manage it via the
`extrafont` package:

``` r
extrafont::loadfonts(device="win")
extrafont::ttf_import(paths = "PATH TO THE FOLDER WHERE ROBOTO TRUETYPE FILES CAN BE FOUND")
```

Doing this on windows I formerly run into a bug. To solve it please
visit (copy from:
<https://stackoverflow.com/questions/61204259/how-can-i-resolve-the-no-font-name-issue-when-importing-fonts-into-r-using-ext>):

``` r
remotes::install_version("Rttf2pt1", version = "1.3.8")
```
