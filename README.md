# Replication package — *Large Language Models and Conversational Counter-Arguments to Anti-Public Sector Bias*

This repository contains the data, survey instruments, and analysis code needed to
reproduce the figures in the paper *Large Language Models and Conversational
Counter-Arguments to Anti-Public Sector Bias*.

The study reports three pre-registered survey experiments in which human subjects
converse with a generative AI programmed to argue in one of several distinct
conversational "styles" (e.g., upbeat, didactic, debate, sycophantic, challenger).
The experiments use OpenAI's GPT-4o mini (Experiment 1) and Anthropic's
Claude Sonnet 4 (Experiments 2 and 3). Each experiment has its own dataset and
survey instrument:

| # | Experiment | Dataset | Respondents |
|---|------------|---------|-------------|
| 1 | Anti-public | `data/1anti_public_analysis.dta` | 1,002 |
| 2 | Debate | `data/2debate_analysis.dta` | 1,027 |
| 3 | Motivated reasoning | `data/3motivated_analysis.dta` | 1,002 |

---

## Notes on the data

**These are the complete survey datasets, not trimmed replication extracts.**
Each `.dta` file contains every respondent and every variable collected in that
experiment — all survey items, treatment assignments, the full chat transcripts,
timing, and quality/screening flags — not just the handful of variables needed to
reproduce the figures in the paper. The scripts in `scripts/` touch only a small
subset of these variables; the rest are included so that the archive supports
analyses well beyond the ones reported here.

- Each row is one survey respondent. Datasets have already been merged with the
  chat transcripts and lightly cleaned (e.g., bot/duplicate flags are included as
  variables rather than dropped).

### The conversation (chat) variables

Each respondent's exchange with the LLM is stored in two complementary forms.

**As a single field.** `chat_full` holds the entire conversation for that
respondent as one concatenated text transcript. Two companion variables summarize
it: `chat_charlength` (number of characters) and `chat_wordcount` (number of
words). `n_turns` records how many turns the conversation ran to.

**Turn by turn.** The same conversation is also split into individual messages, or
*turns*, numbered from 1. For turn *N*:

- `turnN_text` — the full text of that message.
- `turnN_role` — its author (e.g., the participant vs. the LLM/assistant).
- `turnN_createdat` — a Unix timestamp (seconds since epoch) marking when the turn
  was sent. Consecutive timestamps differenced give the elapsed time between
  turns.

Because conversation length varies across respondents, the turn variables run as
high as the longest conversation, and the higher-numbered ones are missing for
respondents whose conversations were shorter. (Some experiments also carry
internal `isturnN_nosearch` processing flags; these are artifacts of the chat
pipeline and are documented in the codebook for completeness.)

---

## Repository contents

```
.
├── README.md                     This file
├── CODEBOOK.md                   Variable documentation
├── data/
│   ├── 1anti_public_analysis.dta     Experiment 1 data (Stata)
│   ├── 2debate_analysis.dta          Experiment 2 data (Stata)
│   └── 3motivated_analysis.dta       Experiment 3 data (Stata)
├── surveys/                      Survey instruments, as fielded
│   ├── experiment1_anti_public.docx
│   ├── experiment2_debate.docx
│   └── experiment3_motivated_reasoning.docx
├── scripts/
│   ├── figure2_exp1_within.do        Stata → Figure 2
│   ├── figure4_exp2_effects.do       Stata → Figure 4
│   ├── figure6_exp3_within.do        Stata → Figure 6
│   └── figure7_credibility.R         R     → Figure 7
└── figures/                      Output figures land here when scripts are run
```

The `.docx` files are Word documents of the survey instruments as fielded.

---

## Which figures are reproducible

The repository reproduces the four data-driven figures in the paper:

| Figure | Description | Script | Software |
|--------|-------------|--------|----------|
| **Figure 2** | Experiment 1: pre/post performance-rating means, upbeat LLM vs. control | `scripts/figure2_exp1_within.do` | Stata |
| **Figure 4** | Experiment 2: estimated treatment effects on favorability vs. control | `scripts/figure4_exp2_effects.do` | Stata |
| **Figure 6** | Experiment 3: pre→post favorability change, by LLM style | `scripts/figure6_exp3_within.do` | Stata |
| **Figure 7** | Experiment 3: perceptions of the LLM across credibility items, by treatment | `scripts/figure7_credibility.R` | R |

**Figures 1, 3, and 5 are not generated from data.** They are conceptual
diagrams illustrating the flow of each experiment and are not produced by any
script.

Running a script writes both a `.pdf` and a 300-dpi `.jpg` of the figure into the
`figures/` folder (sized to the journal's 5-inch-width guideline).

---

## Software requirements

**Stata** (Figures 2, 4, 6). Developed in Stata 19. Figure 4 uses two
user-written packages; install them once:

```stata
ssc install coefplot
ssc install estout
```

The scripts set the `stmono1` scheme and request the *Times New Roman* font; if
that font is unavailable Stata falls back to its default and the figure still
renders.

**R** (Figure 7). Developed in R 4.5.1. The script loads its dependencies with
[`pacman`](https://cran.r-project.org/package=pacman), which installs any that
are missing:

```r
install.packages("pacman")
```

The most important packages are `tidyverse`, `readstata13`, `ggplot2`, and
`Hmisc` (for the confidence-interval summary). The font handling is
cross-platform: the Windows-specific font device is loaded only on Windows, so
the script runs as-is on macOS and Linux.

---

## How to reproduce the figures

All scripts use paths **relative to the repository root** (the folder containing
`data/`, `scripts/`, and `figures/`). Set your working directory there first.

**Stata** — from the repository root:

```stata
cd "/path/to/this/repository"
do scripts/figure2_exp1_within.do
do scripts/figure4_exp2_effects.do
do scripts/figure6_exp3_within.do
```

**R** — from the repository root:

```r
setwd("/path/to/this/repository")
source("scripts/figure7_credibility.R")
```

Outputs appear in `figures/` as `Figure2`, `Figure4`, `Figure6`, and `Figure7`
(each as both `.pdf` and `.jpg`).

---

## Codebook

[`CODEBOOK.md`](CODEBOOK.md) documents every variable in all three datasets
(326 variables total): variable name, type, a plain-language description, and —
for categorical items — the coded values and their meanings. The conversation
(chat) variables are explained in [Notes on the data](#notes-on-the-data) above.

---

## Citation

> Marvel, John D., Sheeling Neo, Rachel Cho, and Sangwon Ju. 2026. "Large
> Language Models and Conversational Counter-Arguments to Anti-Public Sector
> Bias." *Journal of Public Administration Research and Theory.*

Please also cite this data and code archive. Its Zenodo DOI is shown on the
archive's Zenodo record page.

## License

This archive — data, code, survey instruments, and documentation — is released
under the [Creative Commons Attribution 4.0 International (CC-BY-4.0)](https://creativecommons.org/licenses/by/4.0/)
license. You are free to share and adapt the material for any purpose, provided
you give appropriate credit.

## Contact

John Marvel — jmarvel@american.edu
