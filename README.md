# README

Building a Community for MPCS student@UChicago
=============

Models:

* User (Everyone who launches a discussion or posts a comment need to sign up or login.)
* Topic (Top-most level. Each consists of discussions and comments below the discussion.)
* Discussion (Belongs to a topic, concerning a discussion launched.)
* Comment (A comment belongs to a discussion, launched by a certain user.)



How to set up:

1. In your Command Prompt, cd mpcs52553-final
2. bundle install
3. rails db:migrate db:seed
4. rails server
5. Browse 'localhost:3000'.


How to use:
1. users need to sign up for the first time, and login if they launch a discussion or make a comment. Username is unique.
Moreover, users can edit their information, or log out.
2. users can launch discussions, and see, delete, comment or edit the discussions they launched.
3. users can comment below any discussions, and see or delete their comments.
<!-- 4. users can see a whole list of topics (a topic consists of a discussion with all its following comments).
Moreover, they can see the related topics in which they have commented or discussed. -->
