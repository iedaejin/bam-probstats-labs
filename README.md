# Probability and Statistics — Labs

Computer labs for **Probability and Statistics**, Bachelor in Applied Mathematics (BAM), IE University, Spring 2027. Shared by all instructors of the BAM and BIEBAM sections.

## How a lab works

Each `Lab_*` folder is one lab. Work in pairs during the lab session, then complete the tutorial on your own.

| File | Use |
|---|---|
| `Lab_NN_….Rproj` | Double-click it (or *File → Open Project*) first: RStudio then works inside the lab folder, so `data/...` paths work. |
| `lab.Rmd` | The guided analysis. Open it, run the chunks, answer the *Your turn* tasks, and click **Knit** to get an HTML report. |
| `tutorial.Rmd` | The graded part. Click **Run Document**, answer the questions, type your name and download the `.txt`. Upload that `.txt` to Blackboard before the next session. |
| `lab_submission.R` | Leave it in the folder. The tutorial loads it. Do not run it yourself. |
| `data/` | The dataset(s) for the lab, with `SOURCE.txt`. |

Install the packages once (from the repository folder):

```r
source("install_course_packages.R")
```

Then, inside a lab project:

```r
rmarkdown::run("tutorial.Rmd")
```

Both `lab.Rmd` and `tutorial.Rmd` are R Markdown files: they need only the `rmarkdown` package (installed above) and the Pandoc that ships with RStudio. Nothing else to install.

Always work from inside the lab folder (open its `.Rproj`): data paths are relative (`data/...`). Never use `setwd()`. The labs use base R graphics and no packages beyond those above.

## Where to run R

- **Your own computer**: R ≥ 4.3 and RStudio (or Positron / VS Code with the R extension; install Pandoc separately there).
- **Posit Cloud**: upload one lab folder to a new RStudio project.
- **GitHub Codespaces**: *Code → Codespaces → Create*. The `.devcontainer` installs R, RStudio Server, Pandoc and the packages above.

## Labs

| Folder | Session | Topic | Data |
|---|---|---|---|
| `Lab_00_Intro_R` | 5 | Installing R and RStudio, projects, vectors, data frames, functions, base plots, reading a csv, R Markdown, `sample()` and a first dice simulation | `mtcars` |
| `Lab_01_Distributions` | 10 | `d`/`p`/`q`/`r` functions for binomial, geometric, Poisson, uniform, normal, exponential and gamma; pmf, pdf and cdf plots; probabilities and quantiles checked by hand | `discoveries`, `rivers` |
| `Lab_02_Simulation` | 11 | Law of large numbers, Monte Carlo (birthday problem, Monty Hall, a dice game), empirical vs theoretical distributions, inverse transform, sampling distribution of the mean and a CLT preview | `rivers` |
| `Lab_03_Inference` | 24 | Confidence intervals, `t.test` (one-sample, two-sample, paired), `prop.test`, `var.test`, `chisq.test` (independence, goodness of fit), CI coverage by simulation | `survey` (MASS), `sleep`, `ToothGrowth` |
| `Lab_04_ANOVA_Regression` | 30 | One-way ANOVA, `TukeyHSD`, assumption checks, randomized block and two-way ANOVA with interaction, simple and multiple regression with `lm()`, `confint`, `predict`, residual diagnostics | `PlantGrowth`, `npk`, `ToothGrowth`, `warpbreaks`, `mtcars` |

## Data and licence

The datasets are copied from R packages (`datasets`, `MASS`). Copyright in the data remains with the original authors; each `data/SOURCE.txt` gives the package, the original reference and the licence. `R/` is a copy of `lab_submission.R` for the repository; a lab folder does not need it. The lab text is course material. See `LICENSE`.

## Use of generative AI

You may use GenAI tools for ideation, proofreading and coding help with an acknowledgement, as the syllabus explains. Submissions (tutorial answers, assignments, group work and exams) must be your own work.
