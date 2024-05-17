          Users
          ------
          UserID (PK)
          Username
          Email
          Hashed_Password
          Created_At
             |
             |
             | (M:N)
             |
           Animal_Users
           -------------
           UserID (FK) ---|---- UserID (PK)
                           |       Users
                           |       AnimalID (FK) ---|---- AnimalID (PK)
                           |                           Animals

          Adoption_Centers
          ----------------
          CenterID (PK)
          Name
          Location
          Contact_Info
          Website
          Created_At

          Animals
          -------
          AnimalID (PK)
          Name
          Type
          Breed
          Age
          Description
          Temperament
          Size
          Color
          Coat_Length
          Spayed_Neutered
          Vaccination_Status
          Adoption_Fee
          Image_URL
          Adoption_Center_ID (FK) ---|---- CenterID (PK)
                                      |       Adoption_Centers
                                      |

          Resources
          ---------
          ResourceID (PK)
          Title
          Description
          URL
          Created_At
             |
             |
             | (M:N)
             |
           User_Resources
           --------------
           UserID (FK) ---|---- UserID (PK)
                           |       Users
                           |       ResourceID (FK) ---|---- ResourceID (PK)
                           |                           Resources
                           |

          Favorite_Animals
          ----------------
          UserID (FK) ---|---- UserID (PK)
                          |       Users
                          |       AnimalID (FK) ---|---- AnimalID (PK)
                          |                           Animals
                          |

          Authentication_Logs
          -------------------
          LogID (PK)
          UserID (FK)
          Action
          Timestamp

          Error_Logs
          -------------------
          LogID (PK)
          UserID (FK)
          Error_Message
          Timestamp

          Animal_Images
          -------------
          ImageID (PK)
          AnimalID (FK)
          Image_URL

          Event_Information
          -----------------
          EventID (PK)
          Title
          Description
          Location
          Date
