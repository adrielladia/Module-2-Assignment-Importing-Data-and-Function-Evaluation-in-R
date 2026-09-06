# myMean.R
# Assignment 2 - evaluating and correcting the myMean function

assignment2 <- c(16, 18, 14, 22, 27, 17, 19, 17, 17, 22, 20, 22)

# --- Original (buggy) function ---
myMean_broken <- function(assignment2) {
  return(sum(assignment) / length(someData))
}

# Test it (wrapped in tryCatch so the script doesn't halt)
result <- tryCatch({
  myMean_broken(assignment2)
}, error = function(e) {
  paste("Error:", conditionMessage(e))
})

print(result)
# Expected output:
# [1] "Error: object 'assignment' not found"

# --- Why it fails ---
# The function's parameter is named `assignment2`, but the body
# references `assignment` and `someData` -- neither of which exists
# anywhere in the script or the function's scope. R matches variables
# by exact name, so it has no way of knowing `assignment` was meant to
# be `assignment2`. It errors on `sum(assignment)` before ever reaching
# `length(someData)`.

# --- Corrected function ---
myMean <- function(assignment2) {
  return(sum(assignment2) / length(assignment2))
}

myMean(assignment2)
# [1] 19.25
