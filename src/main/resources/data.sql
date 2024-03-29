INSERT INTO events (id_event, date, description, hour, name, recommended, capacity) VALUES (default, '2023-07-09', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean quam nunc, porttitor vehicula turpis et, iaculis laoreet risus. In et diam ex. Aliquam rhoncus massa bibendum mollis tristique. Vestibulum ante ipsum.', '18:00:00', 'The Boss en Gijón', true, 646)
INSERT INTO events (id_event, date, description, hour, name, recommended, capacity) VALUES (default, '2023-08-09', 'Ble ble ble.', '18:30:00', 'Tina Turner en Gijón', true, 987)
INSERT INTO events (id_event, date, description, hour, name, recommended, capacity) VALUES (default, '2023-09-09', 'Bli bli bli.', '19:00:00', 'U2 en Gijón', true, 432)
INSERT INTO events (id_event, date, description, hour, name, recommended, capacity) VALUES (default, '2023-10-09', 'Blo blo blo.', '19:30:00', 'Coldplay en Gijón', true, 432)
INSERT INTO events (id_event, date, description, hour, name, recommended, capacity) VALUES (default, '2023-11-09', 'Blu blu blu.', '20:00:00', 'Pink Floyd en Gijón', false, 432)
INSERT INTO events (id_event, date, description, hour, name, recommended, capacity) VALUES (default, '2023-12-09', 'Bla ble ble.', '21:30:00', 'Mónica Naranjo en Gijón', false, 432)

INSERT INTO images (id_image, name, id_event) VALUES(default, 'the-boss.png', 1)
INSERT INTO images (id_image, name, id_event) VALUES(default, 'tina-turner.jpg', 2)
INSERT INTO images (id_image, name, id_event) VALUES(default, 'u2.jpg', 3)
INSERT INTO images (id_image, name, id_event) VALUES(default, 'coldplay.jpg', 4)
INSERT INTO images (id_image, name, id_event) VALUES(default, 'pink-floyd.jpg', 5)
INSERT INTO images (id_image, name, id_event) VALUES(default, 'monica-naranjo.jpg', 6)

INSERT INTO users (id_user, username, password) VALUES(default, 'admin@.es', '$2a$10$6wDeb3wqewh/nSWKVyIh5.0D4XjqyktJ5afuca0aBXDo1sUUIPDAO')
INSERT INTO users (id_user, username, password) VALUES(default, 'nada01@.es', '$2a$10$6wDeb3wqewh/nSWKVyIh5.0D4XjqyktJ5afuca0aBXDo1sUUIPDAO')
INSERT INTO users (id_user, username, password) VALUES(default, 'nada02@.es', '$2a$10$6wDeb3wqewh/nSWKVyIh5.0D4XjqyktJ5afuca0aBXDo1sUUIPDAO')
INSERT INTO users (id_user, username, password) VALUES(default, 'user@.es' ,'$2a$10$6wDeb3wqewh/nSWKVyIh5.0D4XjqyktJ5afuca0aBXDo1sUUIPDAO')

INSERT INTO roles (id_role, role) VALUES (default, "ROLE_ADMIN")
INSERT INTO roles (id_role, role) VALUES (default, "ROLE_USER")

INSERT INTO roles_users (user_id, role_id) VALUES (1, 1)
INSERT INTO roles_users (user_id, role_id) VALUES (4, 2)

INSERT INTO events_users (user_id, event_id) VALUES (1, 1)
INSERT INTO events_users (user_id, event_id) VALUES (4, 2)