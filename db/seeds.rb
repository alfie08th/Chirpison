# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

education = ['HS', 'Asc.', 'Bsc.', 'Ms.', 'Phd.', 'HS', 'Asc.', 'Bsc.', 'Ms.', 'Phd.','HS', 'Asc.', 'Bsc.', 'Ms.', 'Phd.','HS', 'Asc.', 'Bsc.', 'Ms.', 'Phd.']

courses = ['ACCESSORY DESIGN', 'ADVERTISING''ANIMATION','ARCHITECTURAL HISTORY','ARCHITECTURE','ART HISTORY','BRANDED ENTERTAINMENT','BUSINESS OF BEAUTY AND FRAGRANCE','CINEMA STUDIES',
'CREATIVE BUSINESS LEADERSHIP','DESIGN FOR SUSTAINABILITY','DESIGN MANAGEMENT','DRAMATIC WRITING','EQUESTRIAN STUDIES','FASHION MARKETING AND MANAGEMENT','FASHION','FIBERS',
'FILM AND TELEVISION','FURNITURE DESIGN','GRAPHIC DESIGN','ILLUSTRATION','IMMERSIVE REALITY','INDUSTRIAL DESIGN',
'INTERACTIVE DESIGN AND GAME DEVELOPMENT','INTERIOR DESIGN','JEWELRY','LUXURY AND FASHION MANAGEMENT','MOTION MEDIA DESIGN']
i = 0

courses.length.times do
    Student.create do |user|
        user.f_name = Faker::Name.first_name
        user.l_name = Faker::Name.last_name
        user.birthday = Faker::Date.birthday(70, 99)
        user.education = courses[i]
        i+=1;
        # user.education = Faker::Educator.course_name
    end
end

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