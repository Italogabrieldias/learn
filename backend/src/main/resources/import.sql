INSERT INTO tb_user (name, email, password) VALUES ('Alex', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('bob brow', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);


INSERT INTO tb_course(name, img_Uri, img_Gray_Uri) VALUES ('Java Spring','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsAI056ak-kiMgt_Xl6FK0oNoSKu-8VY4Hs1-166RssEaZWtcytJNAr5E3duoDJeQz2dE&usqp=CAU', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsAI056ak-kiMgt_Xl6FK0oNoSKu-8VY4Hs1-166RssEaZWtcytJNAr5E3duoDJeQz2dE&usqp=CAU');

INSERT INTO tb_offer (edition,start_Moment, end_Moment, course_id) VALUES ('1.0',TIMESTAMP WITH TIME ZONE '2020-07-13T20:50:07.12345Z',TIMESTAMP WITH TIME ZONE '2021-07-13T20:50:07.12345Z',1);
INSERT INTO tb_offer (edition,start_Moment, end_Moment, course_id) VALUES ('2.0',TIMESTAMP WITH TIME ZONE '2020-12-13T20:50:07.12345Z',TIMESTAMP WITH TIME ZONE '2021-07-13T20:50:07.12345Z',1);

INSERT INTO tb_resource (title, description, position, img_Uri,type,offer_id) VALUES ('Trilha Spring', 'trilha principal do curso', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsAI056ak-kiMgt_Xl6FK0oNoSKu-8VY4Hs1-166RssEaZWtcytJNAr5E3duoDJeQz2dE&usqp=CAU',1, 1);
INSERT INTO tb_resource (title, description, position, img_Uri,type,offer_id) VALUES ('Forum', 'Tire suas duvidas', 2, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsAI056ak-kiMgt_Xl6FK0oNoSKu-8VY4Hs1-166RssEaZWtcytJNAr5E3duoDJeQz2dE&usqp=CAU',2, 1);
INSERT INTO tb_resource (title, description, position, img_Uri,type,offer_id) VALUES ('Bonus Spring', 'exclusive live', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsAI056ak-kiMgt_Xl6FK0oNoSKu-8VY4Hs1-166RssEaZWtcytJNAr5E3duoDJeQz2dE&usqp=CAU',0, 1);

INSERT INTO tb_section (title, description, position, img_Uri,resource_id, prerequisite_id) VALUES ('Capitulo 01', 'neste capitulo vamos começar',1,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsAI056ak-kiMgt_Xl6FK0oNoSKu-8VY4Hs1-166RssEaZWtcytJNAr5E3duoDJeQz2dE&usqp=CAU', 1,NULL);
INSERT INTO tb_section (title, description, position, img_Uri,resource_id, prerequisite_id) VALUES ('Capitulo 02', 'neste capitulo vamos evoluir',2,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsAI056ak-kiMgt_Xl6FK0oNoSKu-8VY4Hs1-166RssEaZWtcytJNAr5E3duoDJeQz2dE&usqp=CAU', 1,1);
INSERT INTO tb_section (title, description, position, img_Uri,resource_id, prerequisite_id) VALUES ('Capitulo 03', 'neste capitulo vamos finalizar',3,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsAI056ak-kiMgt_Xl6FK0oNoSKu-8VY4Hs1-166RssEaZWtcytJNAr5E3duoDJeQz2dE&usqp=CAU', 1,2);


INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment,refund_Moment,available, only_Update) VALUES (1,1,TIMESTAMP WITH TIME ZONE '2021-07-13T10:50:07.12345Z', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment,refund_Moment,available, only_Update) VALUES (2,1,TIMESTAMP WITH TIME ZONE '2021-07-13T10:50:07.12345Z', null, true, false);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Lesson one ', 1,1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (1, 'material de apoio: abc ','https://www.youtube.com/watch?v=jSnLOoGjQ80');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Lesson two ', 2,1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (2, 'material de apoio: abc ','https://www.youtube.com/watch?v=jSnLOoGjQ80');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Lesson three ', 3,1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (3, 'material de apoio: abc ','https://www.youtube.com/watch?v=jSnLOoGjQ80');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('task cap one ', 4,1);
INSERT INTO tb_task (id, description, question_Count,  approval_Count, weight, due_Date) VALUES (4, 'develop task is good', 5, 4, 1.0,TIMESTAMP WITH TIME ZONE '2021-07-25T10:50:07.12345Z');

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1,1,1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2,1,1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (3,1,1);
