# This file should contain more the record creation needed to seed the database with more values.
# create seeds for parts and accents and example lesson and activity
# # can also be used in that case: reset the database, rails db:reset will drop the database, create again, and seed the application.
puts "Seeding in process ..."

cosmic_lesson = CosmicLesson.create!(
  seo_key: 'fraction',
  cosmic_domain: 'NS', #could infer with ccss_domain_id: 'NS'
  cosmic_domain_order: '2',
  title_short:'Rational numbers and the extended number line',
  title_long: 'What do you know about number lines? What terminology and concepts are useful to visualize rational numbers including integers, decimals, and fractions. ',
  overview:'activity_overview',
  content: 'content of activity starts here...',
  ccss_math_id:'26', #will infer ccss_domain_id: 'NS'
  )

cosmic_part = CosmicPart.create!(
  name: '6.NS.C6c - Part1', #name can be inferred through the math_ccss_id
  content: 'Find and position integers and other rational numbers on a horizontal or vertical number line diagram;',
  ccss_math_id: '26',
  cosmic_lesson_id: '1' #this part belongs to ONE lesson - a lesson may have many parts
  )

cosmic_accent = CosmicAccent.create!(
  name: 'vertical number line',
  content: 'or vertical',
  ccss_math_id: '26',
  cosmic_part_id:'1',
  cosmic_lesson_id: '1' #this accent belongs to ONE lesson - a lesson may have many accents
)


cosmic_activity = CosmicActivity.create!(
  seo_key: 'number_line',
  title_short:'Class observation about number lines and rational numbers',
  title_long: 'activity title_long',
  overview:'activity_overview',
  content: 'content of activity starts here...',
  custom1: '1-observe',
  custom2: 'custom2',
  thumbnail: 'thumbnail_url',
  screenshot: 'screenshot_url',
  cosmic_lesson_id: '1'
  )

puts "Seeding done.Great job K!"