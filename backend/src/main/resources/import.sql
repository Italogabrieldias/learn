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

