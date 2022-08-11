
SELECT InvoiceLine.InvoiceLineId, InvoiceLine.TrackId, InvoiceLine.UnitPrice, Track.Name, Artist.Name FROM InvoiceLine
JOIN Track ON Track.TrackId = InvoiceLine.TrackId
JOIN Album ON Album.AlbumId = Track.AlbumId 
JOIN Artist ON Artist.ArtistId = Album.ArtistId;



    
    
    
    
    
    
    
    
    
    
    
-- Provide a query that shows each Invoice line item, with the name of the track that was purchase, and the name of the artist.
