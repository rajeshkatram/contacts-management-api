CREATE DEFINER=`root`@`localhost` PROCEDURE `sp__INSERT_Contact`(
        
        IN  p_FirstName                      VARCHAR(45)   , 
        IN  p_LastName                    VARCHAR(45)    , 
        IN  p_DOB                      DATE   , 
        IN  p_Gender                     VARCHAR(45),
        IN  p_Title                    VARCHAR(45),
		OUT	p_ContactId	 INT
         
     )
BEGIN 

    INSERT INTO contacts
         (
           FirstName                    , 
           LastName                      , 
           DOB                    , 
           Gender  ,
           Title
         )
    VALUES 
         ( 
           p_FirstName                    , 
           p_LastName                      , 
		   p_DOB                   , 
           p_Gender       ,
           p_Title
         ) ; 
	SELECT LAST_INSERT_ID() INTO p_ContactId  ;
    
END