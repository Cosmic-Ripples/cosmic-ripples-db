USE stream_app;

-- Insertion -------------------------------------------------------------------
DELETE FROM Track;
DELETE FROM Album;
DELETE FROM Artist;

INSERT INTO Artist (`Name`, Country) VALUES ('King Gizzard & the Lizard Wizard', 'AU');
INSERT INTO Artist (`Name`, Country) VALUES ('Tycho', 'US');
INSERT INTO Artist (`Name`, Country) VALUES ('Steely Dan', 'US');
INSERT INTO Artist (`Name`, Country) VALUES ('Led Zeppelin', 'UK');
INSERT INTO Artist (`Name`, Country) VALUES ('Pink Floyd', 'UK');

-- Butterfly 3000
SET @current_artist = (SELECT ID FROM Artist WHERE `Name` = 'King Gizzard & the Lizard Wizard');
INSERT INTO Album (Artist_ID, Title, `Year`, Cover_Path) VALUES (@current_artist, 'Butterfly 3000', 2021, 'King Gizzard & The Lizard Wizard/Butterfly 3000/cover.jpg');
SET @current_album = (SELECT ID FROM Album WHERE `Artist_ID` = @current_artist);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Yours',                '00:04:35', 'King Gizzard & The Lizard Wizard/Butterfly 3000/01 Yours.flac', 1);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Shanghai',             '00:04:00', 'King Gizzard & The Lizard Wizard/Butterfly 3000/02 Shanghai.flac', 2);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Dreams',               '00:04:04', 'King Gizzard & The Lizard Wizard/Butterfly 3000/03 Dreams.flac', 3);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Blue Morpho',          '00:03:50', 'King Gizzard & The Lizard Wizard/Butterfly 3000/04 Blue Morpho.flac', 4);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Interior People',      '00:05:15', 'King Gizzard & The Lizard Wizard/Butterfly 3000/05 Interior People.flac', 5);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Catching Smoke',       '00:06:28', 'King Gizzard & The Lizard Wizard/Butterfly 3000/06 Catching Smoke.flac', 6);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, '2.02 Killer Year',     '00:03:19', 'King Gizzard & The Lizard Wizard/Butterfly 3000/07 2.02 Killer Year.flac', 7);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Black Hot Soup',       '00:05:12', 'King Gizzard & The Lizard Wizard/Butterfly 3000/08 Black Hot Soup.flac', 8);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Ya Love',              '00:04:15', 'King Gizzard & The Lizard Wizard/Butterfly 3000/09 Ya Love.flac', 9);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Butterfly 3000',       '00:02:51', 'King Gizzard & The Lizard Wizard/Butterfly 3000/10 Butterfly 3000.flac', 10);

-- Houses of the Holy
SET @current_artist = (SELECT ID FROM Artist WHERE `Name` = 'Led Zeppelin');
INSERT INTO Album (Artist_ID, Title, `Year`, Cover_Path) VALUES (@current_artist, 'Houses of the Holy', 1973, 'Led Zeppelin/Houses of the Holy/cover.jpg');
SET @current_album = (SELECT ID FROM Album WHERE `Artist_ID` = @current_artist);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'The Song Remains the Same',    '00:05:32', 'Led Zeppelin/Houses of the Holy/01 The Song Remains the Same.flac', 1);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'The Rain Song',                '00:07:39', 'Led Zeppelin/Houses of the Holy/02 The Rain Song.flac', 2);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Over the Hills and Far Away',  '00:04:50', 'Led Zeppelin/Houses of the Holy/03 Over the Hills and Far Away.flac', 3);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'The Crunge',                   '00:03:17', 'Led Zeppelin/Houses of the Holy/04 The Crunge.flac', 4);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Dancing Days',                 '00:03:43', 'Led Zeppelin/Houses of the Holy/05 Dancing Days.flac', 5);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'D\'yer Mak\'er',               '00:04:23', 'Led Zeppelin/Houses of the Holy/06 D\'yer Mak\'er.flac', 6);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'No Quarter',                   '00:07:00', 'Led Zeppelin/Houses of the Holy/07 No Quarter.flac', 7);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'The Ocean',                    '00:04:31', 'Led Zeppelin/Houses of the Holy/08 The Ocean.flac', 8);

-- The Dark Side of the Moon
SET @current_artist = (SELECT ID FROM Artist WHERE `Name` = 'Pink Floyd');
INSERT INTO Album (Artist_ID, Title, `Year`, Cover_Path) VALUES (@current_artist, 'The Dark Side of the Moon', 1973, 'Pink Floyd/The Dark Side of the Moon/cover.jpg');
SET @current_album = (SELECT ID FROM Album WHERE `Artist_ID` = @current_artist);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Speak to Me',               '00:01:05', 'Pink Floyd/The Dark Side of the Moon/01 Speak to Me.flac', 1);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Breathe (In the Air)',      '00:02:49', 'Pink Floyd/The Dark Side of the Moon/02 Breathe.flac', 2);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'On the Run',                '00:03:45', 'Pink Floyd/The Dark Side of the Moon/03 On the Run.flac', 3);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Time',                      '00:06:53', 'Pink Floyd/The Dark Side of the Moon/04 Time.flac', 4);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'The Great Gig in the Sky',  '00:04:43', 'Pink Floyd/The Dark Side of the Moon/05 The Great Gig in the Sky.flac', 5);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Money',                     '00:06:22', 'Pink Floyd/The Dark Side of the Moon/06 Money.flac', 6);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Us and Them',               '00:07:49', 'Pink Floyd/The Dark Side of the Moon/07 Us and Them.flac', 7);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Any Colour You Like',       '00:03:26', 'Pink Floyd/The Dark Side of the Moon/08 Any Colour You Like.flac', 8);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Brain Damage',              '00:03:46', 'Pink Floyd/The Dark Side of the Moon/09 Brain Damage.flac', 9);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Eclipse',                   '00:02:12', 'Pink Floyd/The Dark Side of the Moon/10 Eclipse.flac', 10);

-- Gaucho
SET @current_artist = (SELECT ID FROM Artist WHERE `Name` = 'Steely Dan');
INSERT INTO Album (Artist_ID, Title, `Year`, Cover_Path) VALUES (@current_artist, 'Gaucho', 1980, 'Steely Dan/Gaucho/cover.jpg');
SET @current_album = (SELECT ID FROM Album WHERE `Artist_ID` = @current_artist);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Babylon Sisters',      '00:05:49', 'Steely Dan/Gaucho/01 Babylon Sisters.flac', 1);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Hey Nineteen',         '00:05:06', 'Steely Dan/Gaucho/02 Hey Nineteen.flac', 2);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Glamour Profession',   '00:07:29', 'Steely Dan/Gaucho/03 Glamour Profession.flac', 3);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Gaucho',               '00:05:32', 'Steely Dan/Gaucho/04 Gaucho.flac', 4);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Time Out of Mind',     '00:04:13', 'Steely Dan/Gaucho/05 Time out of Mind.flac', 5);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'My Rival',             '00:04:34', 'Steely Dan/Gaucho/06 My Rival.flac', 6);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Third World Man',      '00:05:15', 'Steely Dan/Gaucho/07 Third World Man.flac', 7);

-- Epoch
SET @current_artist = (SELECT ID FROM Artist WHERE `Name` = 'Tycho');
INSERT INTO Album (Artist_ID, Title, `Year`, Cover_Path) VALUES (@current_artist, 'Epoch', 2017, 'Tycho/Epoch/cover.jpg');
SET @current_album = (SELECT ID FROM Album WHERE `Artist_ID` = @current_artist);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Glider',       '00:04:53', 'Tycho/Epoch/01 Glider.flac', 1);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Horizon',      '00:04:09', 'Tycho/Epoch/02 Horizon.flac', 2);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Slack',        '00:04:11', 'Tycho/Epoch/03 Slack.flac', 3);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Receiver',     '00:04:15', 'Tycho/Epoch/04 Receiver.flac', 4);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Epoch',        '00:05:45', 'Tycho/Epoch/05 Epoch.flac', 5);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Division',     '00:03:58', 'Tycho/Epoch/06 Division.flac', 6);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Source',       '00:04:18', 'Tycho/Epoch/07 Source.flac', 7);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Local',        '00:02:53', 'Tycho/Epoch/08 Local.flac', 8);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Rings',        '00:04:08', 'Tycho/Epoch/09 Rings.flac', 9);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Continuum',    '00:01:44', 'Tycho/Epoch/10 Continuum.flac', 10);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Field',        '00:02:41', 'Tycho/Epoch/11 Field.flac', 11);

-- King Gizzard & The Lizard Wizard/Butterfly 3000/cover.jpg
-- King Gizzard & The Lizard Wizard/Butterfly 3000/01 Yours.flac
-- King Gizzard & The Lizard Wizard/Butterfly 3000/02 Shanghai.flac
-- King Gizzard & The Lizard Wizard/Butterfly 3000/03 Dreams.flac
-- King Gizzard & The Lizard Wizard/Butterfly 3000/04 Blue Morpho.flac
-- King Gizzard & The Lizard Wizard/Butterfly 3000/05 Interior People.flac
-- King Gizzard & The Lizard Wizard/Butterfly 3000/06 Catching Smoke.flac
-- King Gizzard & The Lizard Wizard/Butterfly 3000/07 2.02 Killer Year.flac
-- King Gizzard & The Lizard Wizard/Butterfly 3000/08 Black Hot Soup.flac
-- King Gizzard & The Lizard Wizard/Butterfly 3000/09 Ya Love.flac
-- King Gizzard & The Lizard Wizard/Butterfly 3000/10 Butterfly 3000.flac
-- Led Zeppelin/Houses of the Holy/cover.jpg
-- Led Zeppelin/Houses of the Holy/01 The Song Remains the Same.flac
-- Led Zeppelin/Houses of the Holy/02 The Rain Song.flac
-- Led Zeppelin/Houses of the Holy/03 Over the Hills and Far Away.flac
-- Led Zeppelin/Houses of the Holy/04 The Crunge.flac
-- Led Zeppelin/Houses of the Holy/05 Dancing Days.flac
-- Led Zeppelin/Houses of the Holy/06 D'yer Mak'er.flac
-- Led Zeppelin/Houses of the Holy/07 No Quarter.flac
-- Led Zeppelin/Houses of the Holy/08 The Ocean.flac
-- Pink Floyd/The Dark Side of the Moon/cover.jpg
-- Pink Floyd/The Dark Side of the Moon/01 Speak to Me.flac
-- Pink Floyd/The Dark Side of the Moon/02 Breathe.flac
-- Pink Floyd/The Dark Side of the Moon/03 On the Run.flac
-- Pink Floyd/The Dark Side of the Moon/04 Time.flac
-- Pink Floyd/The Dark Side of the Moon/05 The Great Gig in the Sky.flac
-- Pink Floyd/The Dark Side of the Moon/06 Money.flac
-- Pink Floyd/The Dark Side of the Moon/07 Us and Them.flac
-- Pink Floyd/The Dark Side of the Moon/08 Any Colour You Like.flac
-- Pink Floyd/The Dark Side of the Moon/09 Brain Damage.flac
-- Pink Floyd/The Dark Side of the Moon/10 Eclipse.flac
-- Steely Dan/Gaucho/cover.jpg
-- Steely Dan/Gaucho/01 Babylon Sisters.flac
-- Steely Dan/Gaucho/02 Hey Nineteen.flac
-- Steely Dan/Gaucho/03 Glamour Profession.flac
-- Steely Dan/Gaucho/04 Gaucho.flac
-- Steely Dan/Gaucho/05 Time out of Mind.flac
-- Steely Dan/Gaucho/06 My Rival.flac
-- Steely Dan/Gaucho/07 Third World Man.flac
-- Tycho/Epoch/cover.jpg
-- Tycho/Epoch/01 Glider.flac
-- Tycho/Epoch/02 Horizon.flac
-- Tycho/Epoch/03 Slack.flac
-- Tycho/Epoch/04 Receiver.flac
-- Tycho/Epoch/05 Epoch.flac
-- Tycho/Epoch/06 Division.flac
-- Tycho/Epoch/07 Source.flac
-- Tycho/Epoch/08 Local.flac
-- Tycho/Epoch/09 Rings.flac
-- Tycho/Epoch/10 Continuum.flac
-- Tycho/Epoch/11 Field.flac