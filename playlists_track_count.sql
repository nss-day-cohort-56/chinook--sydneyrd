-- Provide a query that shows the total number of tracks in each playlist. The resultant table should include:
-- Playlist name
-- Total number of tracks on each playlist

SELECT COUNT(*), Playlist.name FROM PlaylistTrack
JOIN PlayList ON Playlist.PlaylistId = PlaylistTrack.PlaylistId
GROUP BY PlayListTrack.PlaylistId;

