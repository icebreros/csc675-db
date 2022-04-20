-- Script name: inserts.sql
-- Author:      Ivan Cebreros
-- Purpose:     Insert data into our ZooManagementDB

-- DB we will be using
USE ZooManagementDB;

INSERT INTO user (user_id, name, email, dob) VALUES (1, "Ivan Cebreros", "test1@gmail.com", CURDATE()), (2, "Mike Chorizo", "test2@gmail.com", CURDATE()), (3, "Dan Cooper", "test3@gmail.com", CURDATE());
INSERT INTO account (account_id, user_id) VALUES (1, 1), (2,2), (3,3);
INSERT INTO role (role_id, type, description) VALUES (1, "regular staff", "regular staff with base pay"), (2, "manager", "manager for entire zoo"), (3, "janitor", "cleaning staff");
INSERT INTO zoostop (zoostop_id, reward_amount) VALUES (1, 100), (2, 200), (3, 50);
INSERT INTO staff (staff_id, user_id) VALUES (1,1), (2,2), (3,3);
INSERT INTO admin (admin_id, staff_id) VALUES (1,1), (2,2), (3,3);
INSERT INTO IT_Specialist (it_specialist_id, name) VALUES (1, "Joe Carpenter"), (2, "Mark Sleezy"), (3, "Stanley Gabbagoo");
INSERT INTO zoocard (zoocard_id, user_id, balance) VALUES (1, 1, 100), (2, 2, 250), (3, 3, 500);
INSERT INTO card_supplier (card_supplier_id, name) VALUES (1, "Big Smoke Cards"), (2, "Papa's Cards"), (3, "Card Company Inc.");
INSERT INTO zooticket (zooticket_id, display_price) VALUES (1, 20), (2, 20), (3, 20);
INSERT INTO ticket (ticket_id, price) VALUES (1, 20), (2, 20), (3, 20);
INSERT INTO medicine_supplier (medicine_supplier_id, name) VALUES (1, "Big Pharma Medicine"), (2, "Great Value Medicine"), (3, "Medicine Boys Inc.");
INSERT INTO veteranarian (vet_id, name) VALUES (1, "Terry Pinklebottom"), (2, "Sophia Cannary"), (3, "Carlos Burrito");
INSERT INTO food_supplier (food_supplier_id, name) VALUES (1, "Mucho Comida Co."), (2, "Carbs for Paws"), (3, "Hearty Nutrition Diets");
INSERT INTO animal (animal_id, pen_id, type) VALUES (1, 1, "Zebra"), (2,2, "Giraffe"), (3, 3, "Hippo");
INSERT INTO pen (pen_id, num_of_inhabitants) VALUES (1, 1), (2,1), (3,1);
INSERT INTO location (location_id, pen_id, map_location) VALUES (1, 1, "A5"), (2, 2, "C7"), (3, 3, "G1");
INSERT INTO cleaners (cleaner_id, name) VALUES (1, "Derek Sanchez"), (2, "Estefan Ortega"), (3, "Gerard Pinot");
INSERT INTO maintenance (maintenance_id, name) VALUE (1, "Marcus Aurelius"), (2, "Sam Booker"), (3, "John Wall");
INSERT INTO item_supplier (item_supplier_id, name) VALUES (1, "Big Toys Inc."), (2, "D&D Toy Co."), (3, "Toys 4 Us");
INSERT INTO item (item_id, name, price, quantity, backroom_location) VALUES (1, "Stuffed Zebra", 30, 10, "C5"), (2, "Lego Giraffe", 100, 5, "A5"), (3, "Stuffed Gorilla", 20, 20, "D6");
INSERT INTO zooticket_IT (zooticket_id, it_specialist_id) VALUES (1,1), (2,2), (3,3);
INSERT INTO account_roles (account_id, role_id) VALUES (1,1), (2,2), (3,3);
INSERT INTO animal_food_supplier (animal_id, food_supplier_id) VALUES (1,1), (2,2), (3,3);
INSERT INTO pen_cleaners (pen_id, cleaner_id) VALUES (1,1), (2,2), (3,3);
INSERT INTO location_maintenance (location_id, maintenance_id) VALUES (1,1), (2,2), (3,3);
INSERT INTO items_supplied (item_id, item_supplier_id) VALUES (1,1), (2,2), (3,3);
INSERT INTO animal_vet (animal_id, vet_id) VALUES (1,1), (2,2), (3,3);
INSERT INTO vet_medicine_supplier (vet_id, medicine_supplier_id) VALUES (1,1), (2,2), (3,3);
INSERT INTO zooticket_ticket (zooticket_id, ticket_id) VALUES (1,1), (2,2), (3,3);
INSERT INTO zoocard_supplied (zoocard_id, card_supplier_id, cards_supplied) VALUES (1, 1, 100), (2, 2, 400), (3, 3, 50);