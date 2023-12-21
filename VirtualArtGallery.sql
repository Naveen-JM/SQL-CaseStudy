Create Database VirtualArtGallery ;
Use VirtualArtGallery;

-- Artwork Table
CREATE TABLE Artwork (
    ArtworkID INT PRIMARY KEY,
    Title VARCHAR(255),
    Description TEXT,
    CreationDate DATE,
    Medium VARCHAR(100),
    ImageURL VARCHAR(255),
);

-- Artist Table
CREATE TABLE Artist (
    ArtistID INT PRIMARY KEY,
    Name VARCHAR(255),
    Biography TEXT,
    BirthDate DATE,
    Nationality VARCHAR(50),
    Website VARCHAR(255),
    ContactInformation VARCHAR(255),
);

-- User Table
CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    Username VARCHAR(50),
    Password VARCHAR(255),
    Email VARCHAR(255),
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    DateOfBirth DATE,
    ProfilePicture VARCHAR(255),
    FavoriteArtworks INT
);

-- Gallery Table
CREATE TABLE Gallery (
    GalleryID INT PRIMARY KEY,
    Name VARCHAR(255),
    Description TEXT,
    Location VARCHAR(255),
    Curator INT, -- Reference to ArtistID
    OpeningHours VARCHAR(255),
    FOREIGN KEY (Curator) REFERENCES Artist(ArtistID)
);
INSERT INTO Artwork (ArtworkID, Title, Description, CreationDate, Medium, ImageURL)
VALUES
  (1, 'The Lotus Pond', 'A beautiful painting depicting a lotus pond at sunrise.', '2022-03-15', 'Oil on Canvas', 'https://example.com/lotus_pond.jpg'),
  (2, 'Rhythms of Rajasthan', 'A vibrant portrayal of traditional Rajasthani dance forms.', '2021-07-22', 'Acrylic on Paper', 'https://example.com/rajasthan_dance.jpg'),
  (3, 'The Serene Ganges', 'A serene landscape capturing the essence of the Ganges river.', '2023-01-10', 'Watercolor on Canvas', 'https://example.com/ganges_landscape.jpg'),
  (4, 'Divine Temples of Khajuraho', 'A detailed artwork showcasing the intricacies of Khajuraho temples.', '2022-09-05', 'Pencil Sketch', 'https://example.com/khajuraho_temples.jpg'),
  (5, 'Diverse Dances of India', 'An ensemble of various classical dance forms from different Indian states.', '2023-05-18', 'Mixed Media', 'https://example.com/diverse_dances.jpg'),
  (6, 'The Mughal Splendor', 'A majestic painting depicting the grandeur of Mughal architecture.', '2021-12-01', 'Digital Art', 'https://example.com/mughal_splendor.jpg'),
  (7, 'Eternal Love - Radha Krishna', 'A timeless representation of the eternal love between Radha and Krishna.', '2022-06-30', 'Oil on Canvas', 'https://example.com/radha_krishna.jpg'),
  (8, 'Bharatanatyam Elegance', 'Capturing the grace and precision of Bharatanatyam dance.', '2023-03-08', 'Ink on Paper', 'https://example.com/bharatanatyam_elegance.jpg'),
  (9, 'Spirit of Kuchipudi', 'Expressing the spirit and energy of the Kuchipudi dance form.', '2021-04-12', 'Mixed Media', 'https://example.com/kuchipudi_spirit.jpg'),
  (10, 'The Colors of Holi', 'A vibrant representation of the joyous festival of Holi.', '2022-02-28', 'Watercolor on Paper', 'https://example.com/holi_colors.jpg');

INSERT INTO Artist (ArtistID, Name, Biography, BirthDate, Nationality, Website, ContactInformation) VALUES
(1, 'Amit Sharma', 'Amit Sharma is a renowned painter from Mumbai.', '1980-05-15', 'Indian', 'http://www.amitsharma.com', 'amit.sharma@email.com'),
(2, 'Priya Patel', 'Priya Patel is a contemporary artist based in Delhi.', '1985-08-22', 'Indian', 'http://www.priyapatelart.com', 'priya.patel@email.com'),
(3, 'Raj Kapoor', 'Raj Kapoor is a skilled sculptor known for his innovative work.', '1972-11-30', 'Indian', 'http://www.rajkapoorcreations.com', 'raj.kapoor@email.com'),
(4, 'Ananya Roy', 'Ananya Roy is a versatile artist specializing in mixed media.', '1990-03-10', 'Indian', 'http://www.ananyaroyartworks.com', 'ananya.roy@email.com'),
(5, 'Vikram Singh', 'Vikram Singh is a celebrated photographer capturing the essence of India.', '1988-06-25', 'Indian', 'http://www.vikramsinghphotos.com', 'vikram.singh@email.com'),
(6, 'Meera Joshi', 'Meera Joshi is a contemporary dancer known for her graceful performances.', '1983-09-18', 'Indian', 'http://www.meerajoshidance.com', 'meera.joshi@email.com'),
(7, 'Kunal Verma', 'Kunal Verma is an emerging artist experimenting with new forms of expression.', '1995-02-08', 'Indian', 'http://www.kunalvermaartistry.com', 'kunal.verma@email.com'),
(8, 'Neha Kapoor', 'Neha Kapoor is a skilled potter whose creations reflect Indian traditions.', '1987-07-12', 'Indian', 'http://www.nehakapoorpottery.com', 'neha.kapoor@email.com'),
(9, 'Rahul Mishra', 'Rahul Mishra is a talented fashion designer blending traditional and modern aesthetics.', '1981-04-05', 'Indian', 'http://www.rahulmishrafashion.com', 'rahul.mishra@email.com'),
(10, 'Sanya Desai', 'Sanya Desai is an accomplished writer weaving stories inspired by Indian culture.', '1993-12-03', 'Indian', 'http://www.sanyadesaiwrites.com', 'sanya.desai@email.com');

INSERT INTO Users (UserID, Username, Password, Email, FirstName, LastName, DateOfBirth, ProfilePicture, FavoriteArtworks) VALUES
(1, 'india_lover', 'password123', 'india_lover@email.com', 'Amit', 'Sharma', '1985-07-20', 'profile_amit.jpg', 101),
(2, 'art_enthusiast', 'art1234', 'art_enthusiast@email.com', 'Priya', 'Patel', '1990-02-15', 'profile_priya.jpg', 204),
(3, 'nature_admirer', 'greenworld', 'nature_admirer@email.com', 'Raj', 'Kapoor', '1982-11-10', 'profile_raj.jpg', 309),
(4, 'culture_explorer', 'explore123', 'culture_explorer@email.com', 'Ananya', 'Roy', '1995-04-03', 'profile_ananya.jpg', 150),
(5, 'photography_buff', 'capturemoments', 'photo_buff@email.com', 'Vikram', 'Singh', '1988-09-28', 'profile_vikram.jpg', 75),
(6, 'dance_lover', 'rhythmdance', 'dance_lover@email.com', 'Meera', 'Joshi', '1987-03-15', 'profile_meera.jpg', 120),
(7, 'art_innovator', 'creativemind', 'art_innovator@email.com', 'Kunal', 'Verma', '1992-06-08', 'profile_kunal.jpg', 90),
(8, 'pottery_artist', 'clayartist', 'pottery_artist@email.com', 'Neha', 'Kapoor', '1989-12-01', 'profile_neha.jpg', 200),
(9, 'fashionista', 'style123', 'fashionista@email.com', 'Rahul', 'Mishra', '1984-08-22', 'profile_rahul.jpg', 180),
(10, 'storyteller', 'writeitout', 'storyteller@email.com', 'Sanya', 'Desai', '1991-05-10', 'profile_sanya.jpg', 250);

