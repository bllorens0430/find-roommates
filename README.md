# BHTB

## Assignment
This Web application is created for the Web Programing course at DePauw University. 
Implemented on Nitrous.io.

### Part 1

##### App Summary

Our web application will be used to match the user with a roommate based on preferences they enter into a form upon signing into website on the main page. When they choose a password and username, they will be assigned a profile number (or we will use the id) and all of this information will be put into the users table of the User model along with the information of the profiles in the database that they will be matched up with. The preference form will send the user’s responses into the Preference model. We will use validations to make sure the user answers each question with a valid response by checking to make sure one of the words is included. We will either use yes/no questions or short answer questions. After submitting their preferences, the user will be able to edit or delete any of their responses from the table. Otherwise, they may continue to their profile page. This page will use the same layout as the profile pages of the prospective roommates, but it will use a generic profile picture. From their profile, the user can press a button to find roommates based on their preferences.

Compatibility between the user and possible roommates will be established by calculating the percentage of preferences that they have in common. The roommate that is suggested will have the highest percentage. We might display the number of users in the system, and allow the user to select the number of roommates they wish to be matched up with. The results page will either redirect straight to the suggested roommate’s profile, or the results page will display the user’s compatibility percentage with each profile’s preferences and provide a link to each profile. We may provide a button on the profiles that send the user to another profile. The navigation bar will include: Sign Out (sends user to the main page), Profile (takes user to their profile), Edit Preferences, Find Roommates (Results Page). If any of these links are clicked before the signs in or makes a profile, they will be sent an error and must return to the main page. (if this is too difficult we will not make it necessary to sign in, and the user only needs to enter a username and password in order to be redirected to the preference form.

The views will include a create new users page, select preferences page, and possibly the login page, a profile page for each user that will display user data, picture, etc, and a results page that will display the percentage of compatibility and a small amount of information about each user, as well as a link to their profile. The information from our Preference model will be displayed on each person’s profile, and information from the User model and Matching model will be displayed on the results page (only usernames, links to pages via info in the table, and percentages). The models use one to many connectors in order to give many preferences to each user (Preferences and User) and to compare one user to many users (Matching and Users).

##### Design

(Modifying)

### Part 2

#### Implementation & Requirements

##### Developing on Nitrous.io

[![Hack beibei-l/Hi-Roommates on Nitrous](https://d3o0mnbgv6k92a.cloudfront.net/assets/hack-s-v1-0616054bfad452919522f1d08ad1fddf.png)](https://lite.nitrous.io/hack_button?source=embed&runtime=rails&repo=beibei-l%2FHi-Roommates)

##### Preview

`rails s -b 0.0.0.0`

