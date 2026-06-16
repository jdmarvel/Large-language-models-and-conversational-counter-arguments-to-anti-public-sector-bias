# ============================================================================
# Figure 7 — Experiment 3 (Motivated reasoning)
# Subjects' perceptions of the LLM across ten credibility items, by treatment.
#
# HOW TO RUN: set the working directory to the repository root (the folder that
# contains /data, /scripts, /figures), e.g.
#     setwd("/path/to/zenodo-replication")
# then:
#     source("scripts/figure7_credibility.R")
#
# The figure used in the paper is the vertical (tall, 5-inch-wide) version,
# written to figures/Figure7.{pdf,jpg}.
#
# R version used by the authors: 4.5.1.
# ============================================================================

##############################################################################################################
# Downloading and Loading Packages
# install.packages("pacman")

pacman::p_load(
  # 1. Data Manipulation & Wrangling
  tidyverse,
  magrittr,
  janitor,
  skimr,

  # 2. Visualization & Plot Enhancements
  ggthemes,
  ggpubr,
  cowplot,
  patchwork,
  scales,
  ggfixest,
  sjPlot,

  # 3. Statistical Modeling & Inference
  fixest,
  broom,
  lmerTest,
  rstatix,
  sandwich,
  lmtest,
  survival,
  margins,
  modelsummary,
  tableone,

  # 4. Text Mining & NLP
  tidytext,
  tidyllm,
  ConversationAlign,

  # 5. Reporting, Tables & Output
  bruceR,
  clipr,
  extrafont,
  devEMF,

  # 6. Utilities & Data I/O
  glue,
  forcats,
  readstata13
)

##############################################################################################################
##############################################################################################################

# Set default font and theme for the ggplot plots.
# The authors used "Times New Roman". On Windows the extrafont Windows device is
# loaded; on macOS/Linux this is skipped (the system font is used instead) so the
# script runs cross-platform. If the Times New Roman font is unavailable on your
# system, ggplot will fall back to the default family with a harmless warning.
font_family <- "Times New Roman"
if (.Platform$OS.type == "windows") {
  try(loadfonts(device = "win"), silent = TRUE)
  par(family = font_family)
}

theme_clean <- function(
  base_size = 16,
  base_family = font_family
) {
  theme_minimal(base_size = base_size, base_family = base_family) +
    theme(
      plot.title = element_text(face = "bold", size = base_size + 4),
      axis.title = element_text(face = "bold", size = base_size + 2),
      axis.text = element_text(size = base_size + 0),
      legend.position = "none",
      panel.grid.major.x = element_blank(),
      panel.grid.minor = element_blank(),
      axis.line = element_line(linewidth = 0.6, colour = "grey30")
    )
}

# Set the theme as default
theme_set(theme_clean())

# Palette set
# #74add1: Weak Sycophancy
# #2c7bb6: Strong Sycophancy
# #fdae61: Weak Challenger
# #d7191c: Strong Challenger

pal_styles <- c('#74add1', '#2c7bb6', '#fdae61', '#d7191c')

##############################################################################################################
##############################################################################################################
# Data Preprocessing
##############################################################################################################
##############################################################################################################

## load data
data_s3 <- read.dta13(
  "data/3motivated_analysis.dta",
  encoding = "UTF-8",
  nonint.factors = TRUE
) %>%
  tibble()

# Set treatment-condition names as in the paper, and order them for the legend.
data_s3 <- data_s3 %>%
  mutate(
    condition = ifelse(
      condition == "Weak yes-man",
      "Weak Sycophancy",
      ifelse(
        condition == "Strong yes-man",
        "Strong Sycophancy",
        ifelse(
          condition == "Weak counter-argument",
          "Weak Challenger",
          ifelse(
            condition == "Strong counter-argument",
            "Strong Challenger",
            condition
          )
        )
      )
    ),
    condition = factor(
      condition,
      levels = c(
        "Weak Sycophancy",
        "Strong Sycophancy",
        "Weak Challenger",
        "Strong Challenger"
      )
    )
  )

# Making long dataset
data_s3_credibility <- data_s3 %>%

  # Convert the listed columns to numeric values
  mutate(across(
    c(
      knowledge,
      informed,
      believable,
      trustworthy,
      enjoyable,
      biased,
      frustrating,
      confident,
      futureinfo,
      recommend
    ),
    as.numeric
  )) %>%

  # Reshape data from wide format to long format
  # Combine the listed columns into two columns:
  #  - "credibility_type" (name of the variable)
  #  - "credibility" (value of the variable)
  pivot_longer(
    cols = c(
      knowledge,
      informed,
      believable,
      trustworthy,
      enjoyable,
      biased,
      frustrating,
      confident,
      futureinfo,
      recommend
    ),
    names_to = "credibility_type",
    values_to = "credibility"
  ) %>%

  # Replace variable names with readable labels
  # and define their order as factor levels
  mutate(
    credibility_type = case_when(
      credibility_type == "knowledge" ~ "Knowledge",
      credibility_type == "informed" ~ "Informed",
      credibility_type == "believable" ~ "Believable",
      credibility_type == "trustworthy" ~ "Trustworthy",
      credibility_type == "enjoyable" ~ "Enjoyable",
      credibility_type == "biased" ~ "Biased",
      credibility_type == "frustrating" ~ "Frustrating",
      credibility_type == "confident" ~ "Confident",
      credibility_type == "futureinfo" ~ "Future Info",
      credibility_type == "recommend" ~ "Recommend"
    ),

    # Convert the classification variable into an ordered factor
    # This ensures that plots or analyses will respect this specific order
    credibility_type = factor(
      credibility_type,
      levels = c(
        "Knowledge",
        "Informed",
        "Believable",
        "Trustworthy",
        "Enjoyable",
        "Biased",
        "Frustrating",
        "Confident",
        "Future Info",
        "Recommend"
      )
    )
  )


# Credibility Visualization (vertical orientation): Figure 7 in the paper
##############################################################################################################
##############################################################################################################
# Items on the y axis and means on the x axis, so the plot is taller and
# narrower (5 inches wide) to meet the JPART figure guidelines.

plt_s3_fig9_vertical <- data_s3_credibility %>%
  ggplot(
    aes(
      x = credibility_type,
      y = credibility,
      color = condition,
      fill = condition
    )
  ) +
  # Light gray vertical gridlines at each credibility value. Under coord_flip,
  # credibility (the y aesthetic) is the horizontal axis, so a constant-y line
  # drawn with geom_hline appears as a vertical gridline. Placed first so it
  # sits behind the points and error bars.
  geom_hline(
    yintercept = 1:5,
    colour = "grey85",
    linewidth = 0.4
  ) +
  # 95 confinterval
  stat_summary(
    fun.data = mean_cl_normal,
    geom = "errorbar",
    position = position_dodge(width = 1),
    width = 0.2,
    linewidth = 1,
  ) +
  stat_summary(
    fun = mean,
    geom = "point",
    position = position_dodge(width = 1),
    size = 3
  ) +
  theme_clean() +
  scale_color_manual(values = pal_styles) +
  scale_fill_manual(values = pal_styles, guide = "none") +
  # Reverse the discrete axis so the first item (Knowledge) appears at the top
  scale_x_discrete(limits = rev) +
  guides(
    color = guide_legend(
      nrow = 2,
      byrow = FALSE,
      override.aes = list(size = 5, alpha = 1)
    )
  ) +
  theme(
    legend.position = "bottom",
    legend.direction = "horizontal",
    legend.box = "vertical",
    legend.box.just = "center",
    # Tighter legend spacing so the legend stops forcing extra width
    legend.spacing.x = unit(0.3, "cm"),
    legend.key.width = unit(0.4, "cm"),
    legend.title = element_blank(),
    legend.text = element_text(size = 13, family = font_family),
    # Items are now on the y axis; keep labels readable but compact so they
    # leave as much horizontal room as possible for the plotting panel
    axis.text.y = element_text(
      size = 12,
      family = font_family,
      color = "black"
    ),
    # Theme gridlines off; vertical gridlines are drawn explicitly via geom_hline
    panel.grid.major.y = element_blank(),
    panel.grid.major.x = element_blank(),
    # Trim margins to reclaim width
    plot.margin = margin(t = 4, r = 8, b = 4, l = 2)
  ) +
  # coord_flip puts the items (originally x) on the vertical axis and the
  # credibility means (originally y) on the horizontal axis. Tightening the
  # credibility range to the actual 1-5 scale spreads the points across more
  # of the available width.
  coord_flip(ylim = c(1, 5), expand = TRUE) +
  scale_y_continuous(breaks = 1:5, expand = expansion(mult = 0.02)) +
  labs(
    x = NULL,
    y = "\nPerceived Credibility Score (1~5)",
    color = NULL
  ) +
  # Dashed separators between items become horizontal lines after the flip
  geom_vline(
    xintercept = seq(1.5, 9.5, by = 1),
    linetype = "dashed",
    linewidth = 0.5
  )

ggsave(
  filename = "figures/Figure7.pdf",
  plot = plt_s3_fig9_vertical,
  device = cairo_pdf,
  width = 5,
  height = 8.5,
  units = "in"
)

# JPG version at 300 DPI (per JPART figure guidelines)
ggsave(
  filename = "figures/Figure7.jpg",
  plot = plt_s3_fig9_vertical,
  device = "jpeg",
  width = 5,
  height = 8.5,
  units = "in",
  dpi = 300,
  quality = 100
)
