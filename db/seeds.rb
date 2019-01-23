# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# PAINTING
# PERFORMING ARTS
# PHOTOGRAPHY
# PRESERVATION DESIGN
# PRODUCTION DESIGN
# SCULPTURE
# SEQUENTIAL ART
# SERVICE DESIGN
# SOCIAL STRATEGY AND MANAGEMENT
# SOUND DESIGN
# TELEVISION PRODUCING
# THEMED ENTERTAINMENT DESIGN
# URBAN DESIGN
# USER EXPERIENCE DESIGN
# VISUAL EFFECTS
# WRITING


images = []
images[0]='https://petapixel.com/assets/uploads/2012/03/sonymedium_mini.jpg'
images[1]='https://r.hswstatic.com/w_907/gif/glass-ceiling-2.jpg'
images[2]='http://pacecps.com/wp-content/uploads/2017/09/designer.jpg'
images[3]='https://img-aws.ehowcdn.com/340x221p/s3-us-west-1.amazonaws.com/contentlab.studiod/getty/a83048c0877946f6b9ba2b59890e10ba.jpg'
images[4]='https://petapixel.com/assets/uploads/2012/03/sonymedium_mini.jpg'
images[5]='https://r.hswstatic.com/w_907/gif/glass-ceiling-2.jpg'
images[6]='http://pacecps.com/wp-content/uploads/2017/09/designer.jpg'
images[7]='https://img-aws.ehowcdn.com/340x221p/s3-us-west-1.amazonaws.com/contentlab.studiod/getty/a83048c0877946f6b9ba2b59890e10ba.jpg'
images[8]= 'https://r.hswstatic.com/w_907/gif/glass-ceiling-2.jpg'


 courses = ['ACCESSORY DESIGN', 'ADVERTISING''ANIMATION','ARCHITECTURAL HISTORY','ARCHITECTURE','ART HISTORY','BRANDED ENTERTAINMENT','BUSINESS OF BEAUTY AND FRAGRANCE','CINEMA STUDIES','GRAPHIC DESIGN']
    c = 0

    9.times do
        Course.create do |course|
            course.name = courses[c]
            course.hours = Faker::Number.between(200, 300)
            course.image = images[c]
            c+=1;
        end
    end

    s_c = 0

    20.times do
        Student.create do |student|
            student.f_name = Faker::Name.first_name
            student.l_name = Faker::Name.last_name
            student.birthday = Faker::Date.birthday(70, 99)
            student.education = Faker::Job.education_level
            s_c+=1;
        end
    end


    instructor_count = 0
    20.times do
        Instructor.create do |instructor|
            instructor.username = Faker::Name.unique.name
            instructor.f_name = Faker::Name.first_name
            instructor.l_name = Faker::Name.last_name
            instructor.email = Faker::Internet.email
            instructor.salary = Faker::Number.between(40000, 100000)
            # salary = instructor.salary
            instructor.salary.to_s.reverse.gsub(/...(?=.)/,'\&,').reverse
            instructor.password = "123password"
            instructor.age = Faker::Number.between(18, 28)
            instructor.education = Faker::Job.education_level
            instructor_count+=1;
        end
    end


  courses = ['ACCESSORY DESIGN', 'ADVERTISING''ANIMATION','ARCHITECTURAL HISTORY','ARCHITECTURE','ART HISTORY','BRANDED ENTERTAINMENT','BUSINESS OF BEAUTY AND FRAGRANCE','CINEMA STUDIES']
  courses_count = 0

    9.times do
        Cohort.create do |cohort|
            cohort.start_date = Faker::Date.between(250.days.ago, Date.today)
            cohort.end_date = Faker::Date.between(200.days.ago, Date.today)
            cohort.course_id = 1
            cohort.student_id = 1
            cohort.instructor_id =1
            courses_count+=1;
        end
    end