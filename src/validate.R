library(pointblank)

data(small_table)
small_table

agent <- small_table |>
  create_agent() |>
  col_vals_lt(a, value = 7) |>
  col_vals_between(d, left = 0, right = 5000) |>
  col_vals_in_set(f, set = c("low", "mid")) |>
  col_vals_regex(b, regex = "^[0-9]-[a-z]{3}-[0-9]{3}$") |>
  interrogate()

get_sundered_data(agent, type = "combined")
