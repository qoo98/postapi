# frozen_string_literal: true

require 'csv'

CSV.foreach('db/KEN_ALL.csv', encoding: 'UTF-8') do |info|
  Postal.create(
    postal_code: info[0],
    prefecture: info[1],
    city: info[2],
    town: info[3]
  )
end
