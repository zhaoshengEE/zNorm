
<!-- README.md is generated from README.Rmd. Please edit that file -->

# zNorm

<!-- badges: start -->

<!-- badges: end -->

The goal of `zNorm` is to provide the `znorm` function with some friends
and let them use this function to do some data analysis.

Use `zNorm` to:

  - Normalize the data in numeric vector
  - Testify whether there exists some non-numeric elements in a vector.

## Installation

You can install the released version of zNorm from
[CRAN](https://CRAN.R-project.org) with:

``` r
devtools::install_github("zhaoshengEE/zNorm")
```

## Basic Usage

This is a basic example which shows how to use the znorm function in
this package:

``` r
library(zNorm)
znorm(c(16, 9, 13, 5))
#> [1]  1.0966892 -0.3655631  0.4700097 -1.2011358
```

## Process of Creating this Package

1. Start the work from RStudio

Type and execute the following code chunk line by line.

```{r}
library(devtools)
create_package("THE PATH TO THE PACKAGE")
use_git()
```

After executing these three lines of code, the RStudio is expected to restart.

2. Link the package to GitHub

Create a new GitHub repository on GitHub first.

Then, type and execute the following code chunk line by line *on the terminal* in RStudio.

```{bash}
git remote add origin https://github.com/zhaoshengEE/zNorm.git
git branch -M main
git push -u origin main
```

3. Add R function into the package

Since the RStudio just restarted, we need to load the *devtools* again.

```{r}
library(devtools)
```

And then create a *.R* file. Once that step is done, we can write R code of the function in that file.

```{r}
use_r("znorm")
```

4. Update the author's information in the *DESCRIPTION* file

5. Get a License

```{r}
use_mit_license("AUTHOR'S NAME")
```

6. Create documentation in the R script

Load the necessary package first

```{r}
library(roxygen2)
```

On the top menu of RStudio, click *Code -> Insert Roxygen Skeleton* and modify the skeleton according to the R function.

Finally, run the following code on the R console to update all the essential files in this package

```{r}
document()
```

7. Create the test code

(1). Load the necessary package first

```{r}
library(devtools)
```

(2). Create the testthat folder

```{r}
use_testthat()
```


(3). Create the test file and write test code in that file

```{r}
use_test("znorm")
```

(4). Running the test on the R console

```{r}
test()
```

8. Create README

```{r}
use_readme_rmd()
```

Modify the contents in the .Rmd file. Once everything is done, knit this file into .md file by using the following code:

```{r}
build_readme()
```

9. Create vignette

```{r}
use_vignette("znorm")
```

Modify the contents in the vignette, after that type in the following code on R console:

```{r}
build_vignettes()
```

10. Some other manual work

(1). When the test code is finished, we can use the test code to test our package via

```{r}
test()
```

(2). Check the R package from time to time during the process of making it

```{r}
check()
```

(3). Load the R scripts in R folder and test the code with some informal tests other than the test code in tests folder

```{r}
load_all()
```
