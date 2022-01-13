# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

job_statuses = JobStatus.create([
  {
    status: "Not Applied"
  },
  {
    status: "Applied"
  },
  {
    status: "Phone Screen"
  },
  {
    status: "Round 1"
  },
  {
    status: "Round 2"
  },
  {
    status: "Round 3"
  },
  {
    status: "OFFER!"
  },
  {
    status: "Rejected"
  },
])