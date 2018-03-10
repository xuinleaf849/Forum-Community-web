# README

Created by: Yunye Xu
cNetID: yunye

Building a Community for MPCS student@UChicago
=============

#Purpose:
this website is a forum community for UChicago MPCS students to post ideas and communicate with each other.

# Models:
- User (Everyone who launches a discussion or posts a comment need to sign up or login.)
- Topic (Top-most level. Each consists of discussions and comments below the discussion.)
- Discussion (Belongs to a topic, concerning a discussion launched.)
- Comment (Belongs to a discussion, launched by a certain user.)



# How to set up:

1. In your Command Prompt, cd mpcs52553-final
2. bundle install
3. rails db:migrate db:seed
4. rails server
5. Browse 'localhost:3000'.


# How to use:
1. For administrator:
- Login with username "admin" and password "123" to be in admin mode.
- After login, admin can view, create, edit(other users can't) and delete(other users can't) topics.
- After clicking into a certain topic, admin can see the discussions related to it, and add discussions.
- Either by clicking the "Discussions" button in the Navbar, or by clicking "view all discussions", admin can view, create, edit(other users can't) and delete(other users can't) discussions.
- In each of the discussions, discussion details and the comments related to it will be shown.
- Comments can only be deleted by admin by clicking "Comments" button in the Navbar.
Admin can also create a new comment.


2. For other users:
- Sign up and login with username, email and password. They will be alerted if username invalid or password incorrect when login.
- After login, users can only view and create topics. (They won't see the edit or delete buttons).
- After clicking into a certain topic, users can see the discussions related to it, and add discussions.
- Either by clicking the "Discussions" button in the Navbar, or by clicking "view all discussions", users can only view and create discussions. (They won't see the edit or delete buttons).
- In each of the discussions, discussion details and the comments related to it will be shown.
- Users can create comments and see the list of comments by clicking "Comments" button in the Navbar. Comments can only be deleted by admin.


3. About user account:
- Users don't need to login every time they browse the website, need to login again until they log out.
- Users can't view or make modification of other users' information.
- Users can view their own information, and update their emails and password.
However, username can't be changed once created. (It's unique.)
- All the user passwords are encrypted.
- Users need to sign up for the first time, and login if they do any actions.
