-- Script name: tests.sql
-- Author:      Ivan Cebreros
-- Purpose:     To test the integrity of this database system
       
-- the database used to test delete and update
USE ZooManagementDB; 

SET SQL_SAFE_UPDATES = 0;

-- 1. Testing user table
DELETE FROM user WHERE name = 'Ivan Cebreros';
UPDATE user SET user_id = 4 WHERE name = 'Mike Chorizo';
-- 2. Testing account table
DELETE FROM account WHERE account_id = 1;
UPDATE account SET account_id = 4 WHERE user_id = 1 ;
-- 3. Testing role table
DELETE FROM role WHERE role_id = 3;
UPDATE role SET type = "staff member" WHERE role_id = 1 ;
-- 4. Testing zoostop table
DELETE FROM zoostop WHERE zoostop_id = 1;
UPDATE zoostop SET reward_amount = 500 WHERE zoostop_id = 3 ;
-- 5. Testing staff table
DELETE FROM staff WHERE staff_id = 1;
UPDATE staff SET user_id = 1 WHERE staff_id = 2 ;
-- 6. Testing admin table
DELETE FROM admin WHERE admin_id = 1;
UPDATE admin SET staff_id = 1 WHERE admin_id = 3 ;
-- 7. Testing IT_Specialist table
DELETE FROM IT_Specialist WHERE it_specialist_id = 1;
UPDATE IT_Specialist SET name = "Mike Oxlong" WHERE it_specialist_id = 2 ;
-- 8. Testing zoocard table
DELETE FROM zoocard WHERE zoocard_id = 1;
UPDATE zoocard SET balance = 1000 WHERE zoocard_id = 2 ;
-- 9. Testing card_supplier table
DELETE FROM card_supplier WHERE card_supplier_id = 1;
UPDATE card_supplier SET name = "Big Smoke Cards" WHERE card_supplier_id = 2 ;
-- 10. Testing zooticket table
DELETE FROM zooticket WHERE zooticket_id = 1;
UPDATE zooticket SET display_price = 25 WHERE zooticket_id = 2 ;
-- 11. Testing ticket table
DELETE FROM ticket WHERE ticket_id = 1;
UPDATE ticket SET price = 25 WHERE ticket_id = 2 ;
-- 12. Testing medicine_supplier table
DELETE FROM medicine_supplier WHERE medicine_supplier_id = 1;
UPDATE medicine_supplier SET name = "Great Value Medicine Plus" WHERE medicine_supplier_id = 2 ;
-- 13. Testing veteranarian table
DELETE FROM veteranarian WHERE vet_id = 1;
UPDATE veteranarian SET name = "Sophia Common" WHERE vet_id = 2 ;
-- 14. Testing food_supplier table
DELETE FROM food_supplier WHERE food_supplier_id = 1;
UPDATE food_supplier SET name = "Mucho Comida Co." WHERE food_supplier_id = 3 ;
-- 15. Testing animal table
DELETE FROM animal WHERE animal_id = 1;
UPDATE animal SET type = "Gorilla" WHERE animal_id = 3 ;
-- 16. Testing pen table
DELETE FROM pen WHERE pen_id = 1;
UPDATE pen SET num_of_inhabitants = 2 WHERE pen_id = 3 ;
-- 17. Testing location table
DELETE FROM location WHERE location_id = 1;
UPDATE location SET map_location = "E2" WHERE location_id = 3 ;
-- 18. Testing cleaners table
DELETE FROM cleaners WHERE cleaner_id = 3;
UPDATE cleaners SET name = "Erik Sanchez" WHERE cleaner_id = 1 ;
-- 19. Testing maintenance table
DELETE FROM maintenance WHERE maintenance_id = 3;
UPDATE maintenance SET name = "Marcus Tolken" WHERE maintenance_id = 1 ;
-- 20. Testing item_supplier table
DELETE FROM item_supplier WHERE item_supplier_id = 1;
UPDATE item_supplier SET name = "Toys 4 U" WHERE item_supplier_id = 3 ;
-- 21. Testing item table
DELETE FROM item WHERE item_id = 1;
UPDATE item SET backroom_location = "E3" WHERE item_id = 3 ;
-- 22. Testing zooticket_IT table
DELETE FROM zooticket_IT WHERE zooticket_id = 1;
UPDATE zooticket_IT SET it_specialist_id = 1 WHERE zooticket_id = 2 ;
-- 23. Testing account_roles table
DELETE FROM account_roles WHERE account_id = 1;
UPDATE account_roles SET role_id = 2 WHERE account_id = 1 ;
-- 24. Testing animal_food_supplier table
DELETE FROM animal_food_supplier WHERE animal_id = 1;
UPDATE animal_food_supplier SET food_supplier_id = 1 WHERE animal_id = 2 ;
-- 25. Testing pen_cleaners table
DELETE FROM pen_cleaners WHERE pen_id = 1;
UPDATE pen_cleaners SET cleaner_id = 1 WHERE pen_id = 2 ;
-- 26. Testing location_maintenance table
DELETE FROM location_maintenance WHERE location_id = 1;
UPDATE location_maintenance SET maintenance_id = 1 WHERE location_id = 2 ;
-- 27. Testing items_supplied table
DELETE FROM items_supplied WHERE item_id = 1;
UPDATE items_supplied SET item_supplier_id = 1 WHERE item_id = 2 ;
-- 28. Testing animal_vet table
DELETE FROM animal_vet WHERE animal_id = 1;
UPDATE animal_vet SET vet_id = 1 WHERE animal_id = 2 ;
-- 29. Testing vet_medicine_supplier table
DELETE FROM vet_medicine_supplier WHERE vet_id = 1;
UPDATE vet_medicine_supplier SET medicine_supplier_id = 1 WHERE vet_id = 2 ;
-- 30. Testing zooticket_ticket table
DELETE FROM zooticket_ticket WHERE zooticket_id = 1;
UPDATE zooticket_ticket SET ticket_id = 1 WHERE zooticket_id = 2 ;
-- 31. Testing zoocard_supplied table
DELETE FROM zoocard_supplied WHERE zoocard_id = 1;
UPDATE zoocard_supplied SET cards_supplied = 1000 WHERE zoocard_id = 2 ;

