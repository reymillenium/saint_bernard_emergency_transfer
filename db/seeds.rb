# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# I create a few sample facilities:
facilities = Facility.create([
                                 {name: 'Blue Alps Ski Camp'},
                                 {name: 'International Camp Swisse'},
                                 {name: 'Tichy Racing Camp'},
                                 {name: 'Ligety Weibrecht Camp'},
                                 {name: 'Keely’s Ski Camp'}
                             ])

# I create a few sample diagnosis:
diagnosis = Diagnosis.create([
                                 {coding_system: 'inter', code: 'S82.101A', description: 'a closed fracture in the right tibia'},
                                 {coding_system: 'inter', code: 'S82.102A', description: 'a closed fracture in the left tibia'},
                                 {coding_system: 'inter', code: 'S82.103A', description: 'a closed fracture in the right femur '},
                                 {coding_system: 'inter', code: 'S82.104A', description: 'a closed fracture in the left femur '},
                                 {coding_system: 'inter', code: 'S82.105A', description: 'a closed fracture in the right fibula '},
                                 {coding_system: 'inter', code: 'S82.106A', description: 'a closed fracture in the left fibula '}
                             ])

# I create a few sample symptoms:
symptoms = Symptom.create([
                              {description: 'Pain in the head'},

                              {description: 'Pain in the left shoulder'},
                              {description: 'Pain in the right shoulder'},

                              {description: 'Pain in the left elbow'},
                              {description: 'Pain in the right elbow'},

                              {description: 'Pain in the left arm'},
                              {description: 'Pain in the right arm'},

                              {description: 'Pain in the left hand'},
                              {description: 'Pain in the right hand'},

                              {description: 'Pain in the waist'},
                              {description: 'Pain in the hip'},

                              {description: 'Pain in the left leg'},
                              {description: 'Pain in the right leg'},

                              {description: 'Pain in the left thigh'},
                              {description: 'Pain in the right thigh'},

                              {description: 'Pain in the left knee'},
                              {description: 'Pain in the right knee'},

                              {description: 'Pain in the left ankle'},
                              {description: 'Pain in the right ankle'}
                          ])

# I create a few sample :












