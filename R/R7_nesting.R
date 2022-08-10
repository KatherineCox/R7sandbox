simple <- new_class("simple",
  properties = list(
    name = class_character
  ),
  validator = function(self){ print("running simple validator"); NULL }
)

complex <- new_class("complex",
  properties = list(
    name = class_character,
    simple_children = simple
  ),
  validator = function(self){ print("running complex validator"); NULL }
)

# nested <- new_class("nested",
#   properties = list(
#     name = class_character,
#     nested_children = nested
#
#   ),
#   validator = function(self){ print("running nested validator"); NULL }
# )

nested <- new_class("nested",
                    validator = function(self){ print("running original nested validator"); NULL }
)

nested <- new_class("nested",
                    properties = list(
                      name = class_character,
                      nested_children = nested
                    ),
                    validator = function(self){ print("running nested validator"); NULL }
)







