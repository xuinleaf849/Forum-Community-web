# README

Created by: Yunye Xu
cNetID: yunye

Building a Community for MPCS student@UChicago
=============

#Purpose: this website is a forum community for UChicago MPCS students to post ideas and communicate with each other.

# Models:
- User (Everyone who launches a discussion or posts a comment need to sign up or login.)
- Topic (Top-most level. Each consists of discussions and comments below the discussion.)
  - Discussion (Belongs to a topic, concerning a discussion launched.)
    - Comment (A comment belongs to a discussion, launched by a certain user.)



How to set up:

1. In your Command Prompt, cd mpcs52553-final
2. bundle install
3. rails db:migrate db:seed
4. rails server
5. Browse 'localhost:3000'.


How to use:
1. For administrator:
(1) Login with username "admin" and password "123" to be in admin mode.
(2) After login, admin can view, create, edit(other users can't) and delete(other users can't) topics.
(3) After clicking into a certain topic, admin can see the discussions related to it, and add discussions.
(4) Either by clicking the "Discussions" button in the Navbar, or by clicking "view all discussions", admin can view, create, edit(other users can't) and delete(other users can't) discussions.
(5) In each of the discussions, discussion details and the comments related to it will be shown.
(6) Comments can only be deleted by admin by clicking "Comments" button in the Navbar.
Admin can also create a new comment.


2. For other users:
(1) Sign up and login with username, email and password. They will be alerted if username invalid or password incorrect when login.
(2) After login, users can only view and create topics. (They won't see the edit or delete buttons).
(3) After clicking into a certain topic, users can see the discussions related to it, and add discussions.
(4) Either by clicking the "Discussions" button in the Navbar, or by clicking "view all discussions", users can only view and create discussions. (They won't see the edit or delete buttons).
(5) In each of the discussions, discussion details and the comments related to it will be shown.
(6) Users can create comments and see the list of comments by clicking "Comments" button in the Navbar. Comments can only be deleted by admin.


3. About user account:
(1) Users don't need to login every time they browse the website, need to login again until they log out.
(2) Users can't view or make modification of other users' information.
(3) Users can view their own information, and update their emails and password.
However, username can't be changed once created. (It's unique.)
(4) All the user passwords are encrypted.
(5) Users need to sign up for the first time, and login if they do any actions.
