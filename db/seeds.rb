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

# I create a few sample observations:
observations = Observation.create([
                                      {description: 'The patients looks a little nervous', moment: Time.now},
                                      {description: 'Coloration change in the affected area', moment: Time.now},
                                      {description: 'Do not touch the affected area', moment: Time.now},
                                      {description: 'The patient can not lift heavy weights', moment: Time.now},
                                      {description: 'The patient needs rest', moment: Time.now},
                                  ])

# I create a few sample allergies:
allergies = Allergy.create([
                               # Food
                               {description: 'coffee intolerance'},
                               {description: 'flavored tea intolerance'},
                               {description: 'wine intolerance'},
                               {description: 'beer intolerance'},
                               {description: 'gin intolerance'},
                               {description: 'liqueurs intolerance'},
                               {description: 'citrus intolerance'},
                               {description: 'ketchup intolerance'},
                               {description: 'cinnamon intolerance'},
                               {description: 'paprika intolerance'},
                               {description: 'curry intolerance'},
                               {description: 'anise intolerance'},
                               {description: 'flavored tea intolerance'},
                               {description: 'egg intolerance'},
                               {description: 'mango intolerance'},
                               {description: 'strawberries intolerance'},
                               {description: 'garlic intolerance'},
                               {description: 'gluten intolerance'},
                               {description: 'milk intolerance'},
                               {description: 'lactose intolerance'},
                               {description: 'peanut intolerance'},
                               {description: 'rice intolerance'},
                               {description: 'sesame intolerance'},
                               {description: 'soy intolerance'},
                               {description: 'Sulfites intolerance'},
                               {description: 'wheat intolerance'},

                               # Drugs
                               {description: 'hypersensitivity to Aspirin'},
                               {description: 'hypersensitivity to Tetracycline'},
                               {description: 'hypersensitivity to Dilantin'},
                               {description: 'hypersensitivity to Tegretol'},
                               {description: 'hypersensitivity to Penicillin'},
                               {description: 'hypersensitivity to Cephalosporins'},
                               {description: 'hypersensitivity to Sulfonamides'},

                               # Environmental
                               {description: 'hypersensitivity to the dog hair'},
                               {description: 'hypersensitivity to the cat hair'},
                               {description: 'hypersensitivity to the pollen'},
                               {description: 'hypersensitivity to the insect stings'},
                               {description: 'hypersensitivity to the mold'},
                               {description: 'hypersensitivity to the perfume'},
                               {description: 'hypersensitivity to the cosmetics'},
                               {description: 'hypersensitivity to the latex'},
                               {description: 'hypersensitivity to the water'},
                               {description: 'hypersensitivity to the chromium'},
                               {description: 'hypersensitivity to the cobalt'},
                               {description: 'hypersensitivity to the formaldehyde'},
                           ])


# I create ONE Admission sample:


# I create ONE sample Patient:
patients = Patient.create([
                              # Patient # 1
                              {
                                  first_name: 'Thomas',
                                  middle_name: '',
                                  last_name: 'Schudel',
                                  mr: '30997',
                                  dob: DateTime.strptime("09/01/1978 17:00", "%m/%d/%Y %H:%M"),
                                  gender: 'male',

                                  # * Needs to exist at least one Admission on the DB before seeding this model
                                  admission_id: '1',

                                  # An array of allergies (each Allergy has a description text field)
                                  # allergies: ['hypersensitivity to aspirin or NSAIDs', ' and gluten intolerance'],
                                  allergies: 'hypersensitivity to aspirin or NSAIDs',

                                  # chronic_conditions (An array of Diagnosis)
                                  # chronic_conditions: [''],
                                  chronic_conditions: 'An array of Diagnosis',

                                  # medications (An array of MedicationOrders])
                                  # medications: [''],
                                  medications: 'An array of MedicationOrders',

                                  # diagnostic_procedures (An array of DiagnosticProcedures]])
                                  # diagnostic_procedures: [''],
                                  diagnostic_procedures: 'An array of DiagnosticProcedures',

                                  # diagnoses (Another array of Diagnosis)??? Difference between this and Chronic conditions???
                                  # diagnoses: [''],
                                  diagnoses: 'Another array of Diagnosis',

                                  # treatments (An array of Treatments)
                                  # treatments: ['']
                                  treatments: 'An array of Treatments'
                              },
                          ])













