require 'Faker'

Organization.create(
	name: "W.O.M.A.N inc",
	contact: "Myra",
	phone: "123-456-7890",
	email: "myra@woman-inc.com",
	notes: "Myra is at W.O.M.A.N. inc",
	username: "woman-inc",
	image_url: "http://amerland.bz/wp-content/uploads/2015/03/woman-inc.png",
	password: "password",
	location: "San Francisco"
)

10.times do 
	Organization.create(
	name: Faker::Company.name,
	# contact: Faker::DragonBall.character,
	phone: Faker::PhoneNumber.cell_phone,
	email: Faker::Internet.email,
	notes: Faker::Company.catch_phrase,
	username: Faker::Company.profession + "#{rand(1..1000000)}",
	image_url: Faker::Company.logo,
	password: "password",
	location: "San Francisco, CA")
end

all_issues = ["Relationship Issues", "Coping Skills", "Addiction", "Anxiety", "Depression", "Domestic Abuse", "Domestic Violence", "Drug Abuse", "Intellectual Disability", "Life Transitions", "Substance Abuse", "Bisexual", "Gay", "Lesbian", "Behavioral Issues", "Child or Adolescent", "Divorce", "Family Conflict", "Grief", "Parenting", "Peer Relationships", "School Issues", "Self Esteem", "Self-Harming", "Trauma and PTSD", "Video Game Addiction", "Mood Disorders", "Bipolar Disorder", "Separation & Divorce Depression Addictio", "Elderly Persons Disorders", "Impulse Control Disorders", "Personality Disorders", "Thinking Disorders", "ADHD", "Eating Disorders", "Obesity", "Dual Diagnosis", "Alcohol Abuse", "Alzheimer’s", "Borderline Personality", "Career Counseling", "Chronic Pain", "Codependency", "Emotional Disturbance", "Marital and Premarital", "Medication Management", "Men’s Issues", "Narcissistic Personality", "Sex Therapy", "Sexual Abuse", "Sexual Addiction", "Sleep or Insomnia", "Stress", "Suicidal Ideation", "Transgender", "Women’s Issues", "non-monogamy, bdsm", "Dissociative Disorders", "Internet Addiction", "Life Coaching", "Online Dating, Family Caregiver Stress", "Weight Loss", "Infertility", "Oppositional Defiance", "Pre/Postnatal concerns, Pregnancy Loss", "Spirituality", "Anger Management", "Pregnancy, Prenatal, Postpartum", "Singleness, Issues in dating", "Adoption", "Learning Disabilities", "Obsessive-Compulsive (OCD)", "Testing and Evaluation", "Chronic Impulsivity", "Infidelity", "Sports Performance", "Psychosis", "secondary trauma, compassion fatigue", "Phobias", "mediation, couples therapy", "Creativity", "University Student Issues", "Activism, Immigration, Twins, Writing", "Autism", "Chronic Illness", "Racial Identity", "Asperger’s Syndrome", "chronic medical illness", "Developmental Disorders", "Multicultural issues", "Stress Reduction. Minority issues", "Traumatic Brain Injury", "Families", "Body Image issues", "Chronic Illness-related Stress"]

all_issues.each{|issue| Issue.create(name: issue)}

10.times do 
Patient.create(
		first_name: Faker::GameOfThrones.character.split(" ").first, 
		last_name: Faker::GameOfThrones.character.split(" ").last, 
		age: rand(15..80),
		sex: ["f","m","f","f","f"].sample,
		organization_id: rand(0..Organization.all.count),
		zip_code: 94105,
		language: ["Spanish", "Norwegian", "Swedish", "Korean", "German", "Russian", "French", "Italian", "Romanian", "Japanese", "Mandarin"].sample,
		notes: Faker::GameOfThrones.quote,
		location: "San Francisco, CA")
end

100.times do 
	PatientIssue.create(patient_id: (1..Patient.all.count), issue_id: (1..Issue.all.count))
end
# Organization.create(
# 	name: "DBC",
# 	contact: "some contact",
# 	phone: "xxx-xxx-xxxx",
# 	email: "some@email.com",
# 	notes: "some notes are written here",
# 	username: "DBC",
# 	image_url: "https://image.flaticon.com/teams/slug/freepik.jpg",
# 	password: "password",
# 	location: "San Francisco, CA")

# Organization.create(
# 	name: "Dev Bootcamp",
# 	contact: "some contact",
# 	phone: "xxx-xxx-xxxx",
# 	email: "some1@email.com",
# 	notes: "some notes are written here about org",
# 	username: "Dev Bootcamp",
# 	image_url: "https://image.flaticon.com/teams/slug/freepik.jpg",
# 	password: "password",
# 	location: "San Francisco, CA")

# first = ["first1", "first2", "first3", "first4", "first5"]
# last = ["last1", "last2", "last3", "last4", "last5"]
# age = [11, 22, 33, 44, 55]
# sex = "mfmff".chars
# org = [1, 2, 2, 2, 1]
# lang = ["english", "english", "spanish", "french", "spanish"]

# Issue.create(name: "Depression")
# Issue.create(name: "Anxiety")
# Issue.create(name: "Sexual Assault")
# Issue.create(name: "Domestic Violence")
# Issue.create(name: "Health")

# for i in 0..4 do 
# 	Patient.create(
# 		first_name: first[i], 
# 		last_name: last[i], 
# 		age: age[i],
# 		sex: sex[i],
# 		organization_id: org[i],
# 		zip_code: 94607,
# 		language: lang[i],
# 		notes: "Some notes about patient",
# 		location: "San Francisco, CA")
# 		num = i + 1
# 		PatientIssue.create(patient_id: num, issue_id: num)
# end
