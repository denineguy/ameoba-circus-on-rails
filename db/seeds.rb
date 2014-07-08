# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
    talents = Talent.create([{ name: 'acrobat'}, { name: 'contortionist' }, { name: 'clown' }, { name: 'freak' }, { name: 'juggler' }])
    ameobas = Ameoba.create([{ name: 'Julia', talent: talents.first, generating_number: 1 }, { name: 'Koren', talent: talents.second, generating_number: 1 }, { name: 'Edward', talent: talents.third, generating_number: 1}, { name: 'Denine', talent: talents.fourth, generating_number: 2 }, { name: 'Adrienne', talent: talents.fifth, generating_number: 2 }])
    acts = Act.create([{ name: 'Act 1', date: Date.new ,time: Time.new, ameobas: [ameobas.first, ameobas.second]}, { name: 'Act 2', date: Date.new ,time: Time.new, ameobas: [ameobas.third, ameobas.fourth, ameobas.fifth] }])