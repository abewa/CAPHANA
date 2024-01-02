namespace app.cap_hana; 
using { Currency, managed, sap } from '@sap/cds/common';


entity Students : managed {
  @title : 'DB ID'
  key ID : Integer;
  @title : 'Full Name'
  Full_name : String;
  @title : 'Gender'
  Gender : String;
  @title : 'Office'
  Office : String;
  @title : 'Advisor'
  Advisor : Association to Users; // Define the association to the Users entity
  // @title : 'Created AT'
  // Created_at : DateTime;
  @title : 'Planned Study Date'
  Planned_study_date : Date;
}

entity Users : managed {
  @title : 'DB ID'
  key ID : Integer;
  @title : 'Full Name'
  Full_name : String;
  @title : 'Email'
  Email : String;
  @title : 'Office'
  Office : String;
  @title : 'Role'
  Role : String; 
  @title : 'Password'
  Password : String; // Consider encryption
  // @title : 'Created AT'
  // Created_at : DateTime;
  // @title : 'Updated AT'
  // Updated_at : DateTime;
  @title : 'Last Login'
  Last_login : DateTime;
  @title : 'Account Status'
  Account_status : Integer; 
}

entity Student_communications : managed {
  key Id : Integer;
  Student : Association to Students;
  User : Association to Users;
  Message : String; 
  Created_date : DateTime;
  Updated_date : DateTime;
  Updated_by : Association to Users;
}

entity Schools : managed {
  key ID : Integer;
  School_name : String;
  Country : String;
  Creatd_at : DateTime; 
}

entity School_courses : managed {
  key ID : Integer;
  School : Association to Schools;
  Course_name : String;
  Status : Integer;
  Created_at : DateTime;
  Updated_at : DateTime;
}

entity Student_applications : managed {
  key ID : Integer;
  Student : Association to Students;
  Course_id : Association to School_courses;
  User : Association to Users;
  Start_date : DateTime;
  Note : String;
  Created_at : DateTime;
  Updated_at : DateTime;
  Final_choice : String;
  Is_deferred : String;
  Application_status : String;
}
