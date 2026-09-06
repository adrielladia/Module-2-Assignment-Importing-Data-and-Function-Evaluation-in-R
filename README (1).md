# Assignment 2: Evaluating myMean()

## Blog link
https://adrielladia.wordpress.com/2026/09/06/module-2-assignment-importing-data-and-function-evaluation-in-r/

## Test Result

Running the original function:

```r
assignment2 <- c(16, 18, 14, 22, 27, 17, 19, 17, 17, 22, 20, 22)

myMean <- function(assignment2) {
  return(sum(assignment) / length(someData))
}

myMean(assignment2)
```

Produces:

```
Error in myMean(assignment2) : object 'assignment' not found
```

## Why It Fails

The function's parameter is named `assignment2`, but the body calls `sum(assignment)`
and `length(someData)` — neither of those variables exists anywhere. R matches
objects by their exact name; it has no idea `assignment` was meant to refer to
`assignment2`. The function errors out on the first undefined reference
(`assignment`) before it even reaches `someData`.

## Corrected Function

```r
myMean <- function(assignment2) {
  return(sum(assignment2) / length(assignment2))
}

myMean(assignment2)
# [1] 19.25
```

Both `sum()` and `length()` now correctly reference the `assignment2` parameter
that was actually passed in, so the function returns the true mean of the vector
(231 / 12 = 19.25).
