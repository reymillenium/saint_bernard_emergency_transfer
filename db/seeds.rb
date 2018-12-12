#
#
#
# **********************************************************************************************************************
#                                        * * *    M O D E L S    * * *                                                 *
# **********************************************************************************************************************


# I create a facility:
facility = Facility.create([
                               {name: 'Blue Alps Ski Camp'}
                           ])

# I create ONE sample Patient:
patients = Patient.create([
                              # Patient # 1: Exercise Example
                              {
                                  first_name: 'Thomas',
                                  middle_name: '',
                                  last_name: 'Schudel',
                                  mr: '30997',

                                  # The patient is 43 years old
                                  dob: DateTime.strptime("09/01/1975 17:00", "%m/%d/%Y %H:%M"),
                                  gender: 'male'
                              },

                              # Patient # 2:
                              {
                                  first_name: 'Janet',
                                  middle_name: '',
                                  last_name: 'Morrison',
                                  mr: '30998',

                                  # The patient is 32 years old
                                  dob: DateTime.strptime("09/01/1986 17:00", "%m/%d/%Y %H:%M"),
                                  gender: 'female'
                              },

                              # Patient # 3:
                              {
                                  first_name: 'Steven',
                                  middle_name: '',
                                  last_name: 'James',
                                  mr: '30999',

                                  # The patient is 38 years old
                                  dob: DateTime.strptime("09/01/1980 17:00", "%m/%d/%Y %H:%M"),
                                  gender: 'other'
                              },
                          ])


# I create ONE Admission sample:
admissions = Admission.create([
                                  # Admission # 1
                                  {
                                      moment: DateTime.strptime("02/18/2018 17:07", "%m/%d/%Y %H:%M"),
                                      patient_id: 1,
                                  },
                                  {
                                      moment: DateTime.strptime("03/19/2017 14:09", "%m/%d/%Y %H:%M"),
                                      patient_id: 2,
                                  },
                                  {
                                      moment: DateTime.strptime("08/10/2018 09:45", "%m/%d/%Y %H:%M"),
                                      patient_id: 3,
                                  },

                              ])

# I create a few sample diagnosis:
diagnosis = Diagnosis.create([
                                 # Exercise examples:
                                 #
                                 # Exercise example, as patient.admission.diagnoses (first Diagnosis List) 1st Paragraph
                                 {coding_system: 'inter', code: 'S82.101', description: 'a fracture of upper end of the right tibia'},
                                 # Exercise example, as patient.chronic_conditions (Second diagnosis List) 2nd Paragraph
                                 {coding_system: 'inter', code: 'J45', description: 'Asthma'},
                                 # Exercise example, as patient.diagnoses (3rd Diagnosis List) 3rd Paragraph
                                 {coding_system: 'inter', code: 'S82.101A', description: 'a closed fracture in the right tibia'},

                                 # Patient # 2
                                 {coding_system: 'inter', code: 'S82.104A', description: 'a closed fracture in the left femur '},
                                 {coding_system: 'inter', code: 'S82.105A', description: 'a closed fracture in the right fibula '},
                                 {coding_system: 'inter', code: 'S82.106A', description: 'a closed fracture in the left fibula '},

                                 # Patient # 3
                                 {coding_system: 'inter', code: 'S82.107A', description: 'a closed fracture in the clavicle '},
                                 {coding_system: 'inter', code: 'S82.108A', description: 'a closed fracture in the escapula '},
                                 {coding_system: 'inter', code: 'S82.109A', description: 'a closed fracture in the left radius '},
                             ])

# I create a few sample symptoms:
symptoms = Symptom.create([
                              # Exercise example:
                              {description: 'severe pain'},
                              {description: 'swelling'},
                              {description: 'limited bending of the joint'},

                              # Patient # 2:
                              {description: 'Pain in the head'},
                              {description: 'Pain in the left shoulder'},
                              {description: 'Pain in the right shoulder'},

                              # Patient # 3:
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
                                      # Exercise Example
                                      {description: 'No soft tissues were damaged', moment: Time.now, admission_id: 1},

                                      # Patient # 2
                                      {description: 'The patients looks a little nervous', moment: Time.now, admission_id: 2},

                                      # Patient # 3
                                      {description: 'Coloration change in the affected area', moment: Time.now, admission_id: 3},
                                  ])

# I create a few sample allergies:
allergies = Allergy.create([
                               # Exercise Example
                               {description: 'hypersensitivity to aspirin or NSAIDs'},
                               {description: 'gluten intolerance'},


                               # Patient # 2
                               {description: 'coffee intolerance'},
                               {description: 'flavored tea intolerance'},

                               # Patient # 3
                               {description: 'wine intolerance'},
                               {description: 'beer intolerance'},

                               # Food
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
                                  # Exercise Example
                                  {description: 'temporary bracing the right leg', necessity: 'restrict the motion in the area'},

                                  # Patient # 2
                                  {description: 'temporary bracing the left leg', necessity: 'restrict the motion in the affected area'},

                                  # Patient # 3
                                  {description: 'temporary bracing the right arm', necessity: 'restrict the motion near the affected area'},

                                  {description: 'temporary bracing the left arm', necessity: 'restrict the motion'},
                                  {description: 'temporary bracing the right shoulder', necessity: 'restrict the motion'},
                                  {description: 'temporary bracing the left shoulder', necessity: 'restrict the motion'},
                              ])


# I create a few order_frequencies
order_frecuencies = OrderFrequency.create([
                                              # Exercise Example
                                              {value: '4', unit: 'hour'},
                                              {value: '6', unit: 'hour'},

                                              # Patient # 2
                                              {value: '3', unit: 'hour'},
                                              {value: '4', unit: 'hour'},

                                              # Patient # 3
                                              {value: '1', unit: 'hour'},
                                              {value: '5', unit: 'hour'},

                                              {value: '2', unit: 'hour'},
                                          ])


# I create a few medication_orders
medication_orders = MedicationOrder.create([
                                               # Exercise example
                                               {name: 'Acetaminophen', unit: 'mg', dosage: '500', necessity: 'relieve pain', route: 'PO', patient_id: 1, order_frequency_id: '1'},
                                               {name: 'Naproxen', unit: 'mg', dosage: '500', necessity: 'relieve swelling', route: 'PO', patient_id: 1, order_frequency_id: '2'},

                                               # Patient # 2
                                               {name: 'Ibuprofen', unit: 'mg', dosage: '200', necessity: 'relieve swelling', route: 'IM', patient_id: 1, order_frequency_id: '3'},
                                               {name: 'Tylenol', unit: 'mg', dosage: '125', necessity: 'relieve swelling', route: 'IM', patient_id: 1, order_frequency_id: '4'},

                                               # Patient # 3
                                               {name: 'Advil', unit: 'mg', dosage: '250', necessity: 'relieve swelling', route: 'SC', patient_id: 1, order_frequency_id: '5'},
                                               {name: 'Motrin', unit: 'mg', dosage: '125', necessity: 'relieve swelling', route: 'SC', patient_id: 1, order_frequency_id: '6'},
                                           ])


# I create a few diagnostic_procedures
diagnostic_procedures = DiagnosticProcedure.create([
                                                       # Exercise example
                                                       {description: 'exploratory radiography', moment: DateTime.strptime("02/18/2018 17:15", "%m/%d/%Y %H:%M"), patient_id: 1},

                                                       # Patient # 2
                                                       {description: 'exploratory scan', moment: DateTime.strptime("09/01/1986 18:08", "%m/%d/%Y %H:%M"), patient_id: 2},

                                                       # Patient # 3
                                                       {description: 'exploratory biopsy', moment: DateTime.strptime("09/01/1980 17:38", "%m/%d/%Y %H:%M"), patient_id: 3},

                                                       # {description: 'Bone Density Test', moment: Time.now, patient_id: 1},
                                                       # {description: 'Breast Ultrasound', moment: Time.now, patient_id: 1},
                                                       # {description: 'exploratory Chest X-Ray', moment: Time.now, patient_id: 1},
                                                       # {description: 'Echocardiogram', moment: Time.now, patient_id: 1},
                                                       # {description: 'Carotid Ultrasound (Carotid Doppler)', moment: Time.now, patient_id: 1},
                                                       # {description: 'Biopsy of the Prostate and Transrectal Ultrasound', moment: Time.now, patient_id: 1},
                                                       # {description: 'Abdominal CT Scan', moment: Time.now, patient_id: 1},
                                                       # {description: 'Back X-Rays (Spine X-Rays)', moment: Time.now, patient_id: 1},
                                                       # {description: 'Blood Testing', moment: Time.now, patient_id: 1},
                                                       # {description: 'Bone Marrow Biopsy', moment: Time.now, patient_id: 1},
                                                       # {description: 'Bone Scan', moment: Time.now, patient_id: 1},
                                                       # {description: 'Bronchoscopy', moment: Time.now, patient_id: 1},
                                                       # {description: 'Electrocardiogram (EKG)', moment: Time.now, patient_id: 1},
                                                       # {description: 'Endometrial Biopsy', moment: Time.now, patient_id: 1},
                                                       # {description: 'Endoscopy', moment: Time.now, patient_id: 1},
                                                       # {description: 'Fecal Occult Blood Test', moment: Time.now, patient_id: 1},
                                                       # {description: 'Fluorescein Angiography (Test for Diabetic Retinopathy)', moment: Time.now, patient_id: 1},
                                                       # {description: 'Hysterosalpingogram', moment: Time.now, patient_id: 1},
                                                       # {description: 'Magnetic Resonance Imaging (MRI)', moment: Time.now, patient_id: 1},
                                                       # {description: 'Mediastinoscopy', moment: Time.now, patient_id: 1},
                                                       # {description: 'Oxygen Saturation Test', moment: Time.now, patient_id: 1},
                                                       # {description: 'Pap Test (Papanicolaou Smear)', moment: Time.now, patient_id: 1},
                                                       # {description: 'Prostate-Specific Antigen Blood Test (PSA Test)', moment: Time.now, patient_id: 1},
                                                       # {description: 'Rapid Strep Test', moment: Time.now, patient_id: 1},
                                                       # {description: 'Sigmoidoscopy', moment: Time.now, patient_id: 1},
                                                       # {description: 'Snellen Test for Visual Acuity', moment: Time.now, patient_id: 1},
                                                       # {description: 'TB (Tuberculosis) Skin Test', moment: Time.now, patient_id: 1},
                                                       # {description: 'Ultrasound', moment: Time.now, patient_id: 1},
                                                   ])


# **********************************************************************************************************************
#                                * * *    A D I T I O N A L    T A B L E S    * * *                                    *
# **********************************************************************************************************************

#
admission_diagnoses = AdmissionDiagnosis.create([
                                                    # Exercise example, as patient.admission.diagnoses (first Diagnosis List) 1st Paragraph
                                                    {admission_id: 1, diagnosis_id: 1},

                                                    # Patient # 2
                                                    {admission_id: 2, diagnosis_id: 4},

                                                    # Patient # 3
                                                    {admission_id: 3, diagnosis_id: 7},
                                                ])

# Used for the Diagnosis of the 3er paragrapgh
admission_symptoms = AdmissionSymptom.create([
                                                 # Exercise example
                                                 {admission_id: 1, symptom_id: 1},
                                                 {admission_id: 1, symptom_id: 2},
                                                 {admission_id: 1, symptom_id: 3},

                                                 # Patient # 2
                                                 {admission_id: 2, symptom_id: 4},
                                                 {admission_id: 2, symptom_id: 5},
                                                 {admission_id: 2, symptom_id: 6},

                                                 # Patient # 3
                                                 {admission_id: 3, symptom_id: 7},
                                                 {admission_id: 3, symptom_id: 8},
                                                 {admission_id: 3, symptom_id: 9},


                                             ])

#
patient_allergies = PatientAllergy.create([
                                              # Exercise example
                                              {patient_id: 1, allergy_id: 1},
                                              {patient_id: 1, allergy_id: 2},

                                              # Patient # 2
                                              {patient_id: 2, allergy_id: 3},
                                              {patient_id: 2, allergy_id: 4},

                                              # Patient # 3
                                              {patient_id: 3, allergy_id: 5},
                                              {patient_id: 3, allergy_id: 6},
                                          ])


# Used for Diagnosis list of the 2nd paragraph
patient_chronic_conditions = PatientChronicCondition.create([
                                                                # Exercise example
                                                                {patient_id: 1, diagnosis_id: 2},

                                                                # Patient # 2
                                                                {patient_id: 2, diagnosis_id: 5},

                                                                # Patient # 3
                                                                {patient_id: 3, diagnosis_id: 8},
                                                            ])


# Used for Diagnosis list of the 3rd paragraph
patient_diagnoses = PatientDiagnosis.create([
                                                # Exercise example
                                                {patient_id: 1, diagnosis_id: 3},

                                                # Patient # 2
                                                {patient_id: 2, diagnosis_id: 6},

                                                # Patient # 3
                                                {patient_id: 3, diagnosis_id: 9},
                                            ])

#
patient_treatments = PatientTreatment.create([
                                                 # Exercise example
                                                 {patient_id: 1, treatment_id: 1},

                                                 # Patient # 2
                                                 {patient_id: 2, treatment_id: 2},

                                                 # Patient # 3
                                                 {patient_id: 3, treatment_id: 3},
                                             ])
