Review.destroy_all
Review.create!(content: "awesome!", arcade: Arcade.first)
Review.create!(content: "not good at all!", arcade: Arcade.last)
