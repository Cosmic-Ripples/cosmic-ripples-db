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
INSERT INTO Album (Artist_ID, Title, `Year`) VALUES (@current_artist, 'Butterfly 3000', 2021);
SET @current_album = (SELECT ID FROM Album WHERE `Artist_ID` = @current_artist);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Yours',                '00:04:35', 'path go1es here', 1);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Shanghai',             '00:04:00', 'path go2es here', 2);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Dreams',               '00:04:04', 'path go3es here', 3);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Blue Morpho',          '00:03:50', 'path go4es here', 4);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Interior People',      '00:05:15', 'path go5es here', 5);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Catching Smoke',       '00:06:28', 'path go6es here', 6);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, '2.02 Killer Year',     '00:03:19', 'path go7es here', 7);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Black Hot Soup',       '00:05:12', 'path go8es here', 8);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Ya Love',              '00:04:15', 'path go9es here', 9);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Butterfly 3000',       '00:02:51', 'path go10es here', 10);

-- Epoch
SET @current_artist = (SELECT ID FROM Artist WHERE `Name` = 'Tycho');
INSERT INTO Album (Artist_ID, Title, `Year`) VALUES (@current_artist, 'Epoch', 2017);
SET @current_album = (SELECT ID FROM Album WHERE `Artist_ID` = @current_artist);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Glider',       '00:04:53', 'go1es', 1);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Horizon',      '00:04:09', 'go2es', 2);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Slack',        '00:04:11', 'go3es', 3);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Receiver',     '00:04:15', 'go4es', 4);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Epoch',        '00:05:45', 'go5es', 5);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Division',     '00:03:58', 'go6es', 6);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Source',       '00:04:18', 'go7es', 7);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Local',        '00:02:53', 'go8es', 8);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Rings',        '00:04:08', 'go9es', 9);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Continuum',    '00:01:44', 'go10es', 10);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Field',        '00:02:41', 'go11es', 11);

-- Gaucho
SET @current_artist = (SELECT ID FROM Artist WHERE `Name` = 'Steely Dan');
INSERT INTO Album (Artist_ID, Title, `Year`) VALUES (@current_artist, 'Gaucho', 1980);
SET @current_album = (SELECT ID FROM Album WHERE `Artist_ID` = @current_artist);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Babylon Sisters',      '00:05:49', 'unique5:49', 1);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Hey Nineteen',         '00:05:06', 'unique5:06', 2);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Glamour Profession',   '00:07:29', 'unique7:29', 3);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Gaucho',               '00:05:32', 'unique5:32', 4);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Time Out of Mind',     '00:04:13', 'unique4:13', 5);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'My Rival',             '00:04:34', 'unique4:34', 6);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Third World Man',      '00:05:15', 'unique5:15', 7);

-- Houses of the Holy
SET @current_artist = (SELECT ID FROM Artist WHERE `Name` = 'Led Zeppelin');
INSERT INTO Album (Artist_ID, Title, `Year`) VALUES (@current_artist, 'Houses of the Holy', 1973);
SET @current_album = (SELECT ID FROM Album WHERE `Artist_ID` = @current_artist);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'The Song Remains the Same',    '00:05:32', 'paf32', 1);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'The Rain Song',                '00:07:39', 'paf39', 2);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Over the Hills and Far Away',  '00:04:50', 'paf50', 3);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'The Crunge',                   '00:03:17', 'paf17', 4);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Dancing Days',                 '00:03:43', 'paf43', 5);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'D\'yer Mak\'er',               '00:04:23', 'paf23', 6);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'No Quarter',                   '00:07:00', 'paf00', 7);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'The Ocean',                    '00:04:31', 'paf31', 8);

-- The Dark Side of the Moon
SET @current_artist = (SELECT ID FROM Artist WHERE `Name` = 'Pink Floyd');
INSERT INTO Album (Artist_ID, Title, `Year`) VALUES (@current_artist, 'The Dark Side of the Moon', 1973);
SET @current_album = (SELECT ID FROM Album WHERE `Artist_ID` = @current_artist);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Speak to Me',               '00:01:05', '1:05steve', 1);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Breathe (In the Air)',      '00:02:49', '2:49steve', 2);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'On the Run',                '00:03:45', '3:45steve', 3);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Time',                      '00:06:53', '6:53steve', 4);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'The Great Gig in the Sky',  '00:04:43', '4:43steve', 5);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Money',                     '00:06:22', '6:22steve', 6);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Us and Them',               '00:07:49', '7:49steve', 7);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Any Colour You Like',       '00:03:26', '3:26steve', 8);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Brain Damage',              '00:03:46', '3:46steve', 9);
INSERT INTO Track (Artist_ID, Album_ID, Title, `Length`, `Path`, Track_Number) VALUES (@current_artist, @current_album, 'Eclipse',                   '00:02:12', '2:12steve', 10);