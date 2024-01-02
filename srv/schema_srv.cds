using app.cap_hana from '../db/schema';

service StudentService {

    entity Users
        as projection on cap_hana.Users;

    entity Students
        as projection on cap_hana.Students;
    
    entity Student_applications
        as projection on cap_hana.Student_applications

    entity Schools
        as projection on cap_hana.Schools;

    entity Student_communications
        as projection on cap_hana.Student_communications;

    entity School_courses
        as projection on cap_hana.School_courses;

}