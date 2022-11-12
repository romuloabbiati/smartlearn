INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Brown', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('HTML Bootcamp', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnUx7nTmk9Ml-phMBdX4ocfUfU02OrDfK9pA&usqp=CAU', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHRPjQZJFbflhc6rq3V1VZO0pn7V-FX24KuQ&usqp=CAU');

INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2022-11-20T00:00:00Z', TIMESTAMP WITH TIME ZONE '2023-11-20T00:00:00Z', 1);
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2022-12-20T00:00:00Z', TIMESTAMP WITH TIME ZONE '2023-12-20T00:00:00Z', 1);

INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('HTML Path', 'Course main path', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnUx7nTmk9Ml-phMBdX4ocfUfU02OrDfK9pA&usqp=CAU', 1, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Forum', 'Place to ask your queries', 2, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnUx7nTmk9Ml-phMBdX4ocfUfU02OrDfK9pA&usqp=CAU', 2, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Lives', 'Exclusive lives to the class', 3, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnUx7nTmk9Ml-phMBdX4ocfUfU02OrDfK9pA&usqp=CAU', 0, 1);

INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Chapter 1', 'Introduction to this chapter', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnUx7nTmk9Ml-phMBdX4ocfUfU02OrDfK9pA&usqp=CAU', 1, null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Chapter 2', 'Continuation to this chapter', 2, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnUx7nTmk9Ml-phMBdX4ocfUfU02OrDfK9pA&usqp=CAU', 1, 1);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Chapter 3', 'Finishing off this chapter', 3, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnUx7nTmk9Ml-phMBdX4ocfUfU02OrDfK9pA&usqp=CAU', 1, 2);