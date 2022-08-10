library(R7)

# copied from R7 vignette
range <- new_class("range",
  properties = list(
    start = class_double,
    end = class_double
  ),
  validator = function(self) {
    if (length(self@start) != 1) {
      "@start must be length 1"
    } else if (length(self@end) != 1) {
      "@end must be length 1"
    } else if (self@end < self@start) {
      sprintf(
        "@end (%i) must be greater than or equal to @start (%i)",
        self@end,
        self@start
      )
    }
  }
)

# new child class
positive_range <- new_class("positive_range", parent = range,
  validator = function(self) {
    if (self@start < 0) {
      "@start must be greater than or equal to zero"
    }
  }
)


# a <- range(1, -1)
# b <- range(-1, 1)

# a <- positive_range(1, -1)
# b <- positive_range(-1, 1)
# c <- positive_range(1, 1)


parent <- new_class("parent",
  validator = function(self){ print("running parent validator"); NULL })
child <- new_class("child", parent = parent,
  validator = function(self){ print("running child validator"); NULL })
grandchild <- new_class("grandchild", parent = child,
  validator = function(self){ print("running grandchild validator"); NULL })

# parent()
# child()
# grandchild()


