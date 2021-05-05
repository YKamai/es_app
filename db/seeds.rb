# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

contents = [
  ['Harsh Mahajan', 'Harsh Mahajan(ex- Animal Husbandry minister of Himachal Pradesh), son of a former Vidhan Sabha Speaker and Cabinet Minister Des Raj Mahajan and was born at Chamba on 12 December 1955. He has a B. Com. and MBA. He studied at Sriram College of Commerce, New Delhi and at Delhi University, New Delhi. He married Uma Mahajan on 7 June 1983.'],
  ['Nothing But Nets', 'Nothing But Nets is a global, grassroots campaign of the United Nations Foundation to raise awareness and funding to fight malaria, a leading cause of death among children in Africa. The campaign aims to prevent malaria deaths by purchasing, distributing, and teaching the proper use of mosquito bed nets to end malaria deaths in Sub-Saharan Africa. As of 2012, the campaign has distributed nets in twenty countries throughout Sub-Saharan Africa with current plans to expand into Kenya and Ethiopia.'],
  ['Christian existential apologetics', 'Christian existential apologetics differs from traditional approaches to Christian apologetics by basing arguments for Christian theism on the satisfaction of existential needs rather than on strictly logical or evidential arguments. Christian existential apologetics may also be distinguished from Christian existentialism and from experiential apologetics. The former is a philosophic outlook concerned with the human condition in general; the latter consists of evidential argumentation based on religious experience.'],
  ['Whitbread Awards', 'The Whitbread Awards (since 2006 called the Costa Book Awards) are among the United Kingdom\'s most prestigious literary awards. They were launched in 1971, are given both for high literary merit but also for works that are enjoyable reading and whose aim is to convey the enjoyment of reading to the widest possible audience.'],
  ['Kynal', 'Kynal was a brand name for a series of aluminium alloys developed and originally produced by the British chemical manufacturer Imperial Chemical Industries (ICI). The name was derived from Kynoch, an existing ICI trademark for ammunition, and aluminium. It was largely used as substitute for Alclad, a popular corrosion-resistant aluminium alloy.'],
  ['Berrimah Prison', 'Berrimah Prison, was an Australian maximum security prison for males formerly located in Darwin, Northern Territory, Australia. The centre was managed by Northern Territory Correctional Services, an agency of the Department of Justice of the Government of the Northern Territory. The centre detained sentenced and charged felons under Northern Territory and/or Commonwealth law.'],
  ['Inside forward', 'The position of inside forward was popularly used in the late nineteenth and first half of the twentieth centuries. The inside forwards would support the centre-forward, running and making space in the opposition defence, and, as the passing game developed, supporting him with passes. The role is broadly analogous to the "hole" or second striker position in the modern game, although here, there were two such players, known as inside right and inside left.']
]

Article.delete_all

contents.each_with_index do |content, i|
  Article.create title: content[0], content: content[1], published_on: i.days.ago.utc
end
