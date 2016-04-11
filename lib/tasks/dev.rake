namespace :dev do
  desc "rebuild database"
  task build: ["tmp:clear", "log:clear", "db:drop", "db:create", "db:migrate"]

  desc "rebuild database and add seeds"
  task rebuild: ["dev:build", "db:seed"]
end
