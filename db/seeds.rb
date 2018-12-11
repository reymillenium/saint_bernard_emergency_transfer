# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# I create a few sample facilities:
facilities = Facility.create([
                                 {name: 'Blue Alps Ski Camp'}
                             ])

# I create a few sample diagnosis: See Hangouts and modify the coding_system to make it real and
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
                              {description: 'pain'},
                              {description: 'swelling'},
                              {description: 'limited bending of the joint'},

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
                                      {description: 'No soft tissues were damaged.', moment: Time.now},
                                      {description: 'The patients looks a little nervous', moment: Time.now},
                                      {description: 'Coloration change in the affected area', moment: Time.now},
                                      {description: 'Do not touch the affected area', moment: Time.now},
                                      {description: 'The patient can not lift heavy weights', moment: Time.now},
                                      {description: 'The patient needs rest', moment: Time.now},
                                  ])

# I create a few sample allergies:
allergies = Allergy.create([

                               {description: 'hypersensitivity to aspirin or NSAIDs'},
                               {description: 'gluten intolerance'},

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
                               {description: 'milk intolerance'},
                               {description: 'lactose intolerance'},
                               {description: 'peanut intolerance'},
                               {description: 'rice intolerance'},
                               {description: 'sesame intolerance'},
                               {description: 'soy intolerance'},
                               {description: 'Sulfites intolerance'},
                               {description: 'wheat intolerance'},

                               # Drugs
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

# I create a few treatments
treatments = Treatment.create([
                                  {description: 'temporary bracing the right leg', necessity: 'restrict the motion.'},

                                  {description: 'temporary bracing the left leg', necessity: 'restrict the motion.'},
                                  {description: 'temporary bracing the right arm', necessity: 'restrict the motion.'},
                                  {description: 'temporary bracing the left arm', necessity: 'restrict the motion.'},
                                  {description: 'temporary bracing the right shoulder', necessity: 'restrict the motion.'},
                                  {description: 'temporary bracing the left shoulder', necessity: 'restrict the motion.'},
                              ])


# I create a few order_frequencies
order_frecuencies = OrderFrequency.create([
                                              {value: '4', unit: 'hour'},
                                              {value: '6', unit: 'hour'},

                                              {value: '3', unit: 'hour'},
                                              {value: '4', unit: 'hour'},
                                              {value: '1', unit: 'hour'},
                                              {value: '5', unit: 'hour'},
                                              {value: '2', unit: 'hour'},
                                          ])


# I create a few medication_orders (¿tiene un campo order_frecuency_id?)
medication_orders = MedicationOrder.create([
                                               {name: 'Acetaminophen', unit: 'mg', dosage: '500', necessity: 'relieve swelling', route: 'PO', order_frequency_id: '1'},
                                               {name: 'Acetaminophen', unit: 'mg', dosage: '500', necessity: 'relieve swelling', route: 'PO', order_frequency_id: '1'},
                                               {name: 'Naproxen', unit: 'mg', dosage: '500', necessity: 'relieve swelling', route: 'PO', order_frequency_id: '2'},

                                               {name: 'Ibuprofen', unit: 'mg', dosage: '200', necessity: 'relieve swelling', route: 'IM', order_frequency_id: '3'},
                                               {name: 'Tylenol', unit: 'mg', dosage: '125', necessity: 'relieve swelling', route: 'IM', order_frequency_id: '4'},
                                               {name: 'Advil', unit: 'mg', dosage: '250', necessity: 'relieve swelling', route: 'SC', order_frequency_id: '5'},
                                               {name: 'Motrin', unit: 'mg', dosage: '125', necessity: 'relieve swelling', route: 'SC', order_frequency_id: '6'},
                                               {name: 'Aspirin', unit: 'mg', dosage: '250', necessity: 'relieve swelling', route: 'PO', order_frequency_id: '7'},
                                           ])


# I create a few diagnostic_procedures. Personaliza hora de la entrada del seed del ejemplo. Mantener la fecha pero cambiar la hora
diagnostic_procedures = DiagnosticProcedure.create([
                                                       {description: 'exploratory radiography', moment: Time.now},

                                                       {description: 'exploratory scan', moment: Time.now},
                                                       {description: 'exploratory biopsy', moment: Time.now},
                                                       {description: 'Bone Density Test', moment: Time.now},
                                                       {description: 'Breast Ultrasound', moment: Time.now},
                                                       {description: 'exploratory Chest X-Ray', moment: Time.now},
                                                       {description: 'Echocardiogram', moment: Time.now},
                                                       {description: 'Carotid Ultrasound (Carotid Doppler)', moment: Time.now},
                                                       {description: 'Biopsy of the Prostate and Transrectal Ultrasound', moment: Time.now},
                                                       {description: 'Abdominal CT Scan', moment: Time.now},
                                                       {description: 'Back X-Rays (Spine X-Rays)', moment: Time.now},
                                                       {description: 'Blood Testing', moment: Time.now},
                                                       {description: 'Bone Marrow Biopsy', moment: Time.now},
                                                       {description: 'Bone Scan', moment: Time.now},
                                                       {description: 'Bronchoscopy', moment: Time.now},
                                                       {description: 'Electrocardiogram (EKG)', moment: Time.now},
                                                       {description: 'Endometrial Biopsy', moment: Time.now},
                                                       {description: 'Endoscopy', moment: Time.now},
                                                       {description: 'Fecal Occult Blood Test', moment: Time.now},
                                                       {description: 'Fluorescein Angiography (Test for Diabetic Retinopathy)', moment: Time.now},
                                                       {description: 'Hysterosalpingogram', moment: Time.now},
                                                       {description: 'Magnetic Resonance Imaging (MRI)', moment: Time.now},
                                                       {description: 'Mediastinoscopy', moment: Time.now},
                                                       {description: 'Oxygen Saturation Test', moment: Time.now},
                                                       {description: 'Pap Test (Papanicolaou Smear)', moment: Time.now},
                                                       {description: 'Prostate-Specific Antigen Blood Test (PSA Test)', moment: Time.now},
                                                       {description: 'Rapid Strep Test', moment: Time.now},
                                                       {description: 'Sigmoidoscopy', moment: Time.now},
                                                       {description: 'Snellen Test for Visual Acuity', moment: Time.now},
                                                       {description: 'TB (Tuberculosis) Skin Test', moment: Time.now},
                                                       {description: 'Ultrasound', moment: Time.now},
                                                   ])

# I create ONE sample Patient:
patients = Patient.create([
                              # Patient # 1
                              {
                                  first_name: 'Thomas',
                                  middle_name: '',
                                  last_name: 'Schudel',
                                  mr: '30997',
                                  dob: DateTime.strptime("09/01/1978 17:00", "%m/%d/%Y %H:%M"),
                                  gender: 'male'
                              }
                          ])


# I create ONE Admission sample:
admissions = Admission.create([
                                  # Admission # 1
                                  {
                                      moment: Time.now,
                                      patient_id: 1,
                                  }
                              ])
















