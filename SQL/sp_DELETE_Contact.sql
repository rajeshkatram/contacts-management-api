CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DELETE_Contact`(IN p_idContact INT)
BEGIN
delete from address where  idcontact=p_idContact;
delete from communication where idcontact=p_idContact;
delete from contacts where idcontact = p_idContact;
END