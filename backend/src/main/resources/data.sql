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

INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2022-11-20T10:00:00Z', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2022-11-20T11:00:00Z', null, true, false);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Lecture 1', 1, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (1, 'How to installs programs', 'https://www.youtube.com/watch?v=0_e9Egeyk2E');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Lecture 2', 2, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (2, 'Introduction to HTML part 1', 'https://www.youtube.com/watch?v=FYgIpVf9TBI');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Lecture 3', 3, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (3, 'Introduction to HTML part 2', 'https://www.youtube.com/watch?v=EsQ07Og1yFM');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Exercise', 4, 1);
INSERT INTO tb_task (id, description, question_Count, approval_Count, weight, due_Date) VALUES (4, 'Create a simple page using only HTML', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2022-11-20T15:00:00Z');

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1);

INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('First feedback, not quite correct, please revise', TIMESTAMP WITH TIME ZONE '2022-11-20T17:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Second feedback, not quite correct, please revise', TIMESTAMP WITH TIME ZONE '2022-11-21T17:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Third feedback, not quite correct, please revise', TIMESTAMP WITH TIME ZONE '2022-11-22T17:00:00Z', true, '/offers/1/resource/1/sections/1', 1);

INSERT INTO tb_deliver (uri, moment, status, feedback, correct_Count, lesson_id, user_id, offer_id) VALUES ('https://github.com/devsuperior/bds-dslearn', TIMESTAMP WITH TIME ZONE '2022-11-20T10:00:00Z', 0, null, null, 4, 1, 1);