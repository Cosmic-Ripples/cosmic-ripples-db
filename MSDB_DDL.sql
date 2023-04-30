USE stream_app;

-- Tables ----------------------------------------------------------------------
DROP TABLE IF EXISTS Track;
DROP TABLE IF EXISTS Album;
DROP TABLE IF EXISTS Artist;

CREATE TABLE Artist (
    ID INT UNSIGNED AUTO_INCREMENT,

    `Name` VARCHAR(64) UNIQUE NOT NULL,
    Country CHAR(2) CHECK(Country REGEXP BINARY '[A-Z][A-Z]'), -- ISO 3166 country code

    PRIMARY KEY (ID)
) AUTO_INCREMENT = 800;

CREATE TABLE Album (
    ID INT UNSIGNED AUTO_INCREMENT UNIQUE NOT NULL, -- required to mark this as unique not null here for some reason, unsure why
    Artist_ID INT UNSIGNED,

    Title VARCHAR(255) NOT NULL,
    `Year` YEAR,
    Cover_Path VARCHAR(255) UNIQUE NOT NULL,
    -- TODO: PLAYTIME: derrived or static?
    -- TODO: Artwork Path

    PRIMARY KEY (Artist_ID, ID),
    FOREIGN KEY (Artist_ID) REFERENCES Artist (ID)
        ON UPDATE CASCADE ON DELETE CASCADE
) AUTO_INCREMENT = 1600;

CREATE TABLE Track (
    ID INT UNSIGNED AUTO_INCREMENT UNIQUE NOT NULL,
    Artist_ID INT UNSIGNED,
    Album_ID INT UNSIGNED,

    Title VARCHAR(255) NOT NULL,
    `Length` TIME NOT NULL,
    `Path` VARCHAR(255) UNIQUE NOT NULL,
    Track_Number INT UNSIGNED DEFAULT 1,

    PRIMARY KEY (Artist_ID, Album_ID, ID),
    FOREIGN KEY (Artist_ID) REFERENCES Artist (ID)
        ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (Album_ID) REFERENCES Album (ID)
        ON UPDATE CASCADE ON DELETE CASCADE
) AUTO_INCREMENT = 3200;
