-- Provide a query that shows the top 3 best selling artists

SELECT ARTIST.Name, COUNT(InvoiceLine.TrackId) AS TrackSales FROM InvoiceLine

JOIN TRACK ON Track.TrackId = InvoiceLine.TrackId
JOIN ALBUM ON Album.AlbumId = Track.AlbumId
JOIN Artist ON Artist.ArtistId = Album.ArtistId 


GROUP BY Artist.ArtistId
ORDER BY TrackSales DESC
LIMIT 3