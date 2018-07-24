# VenuWed ![CI status](https://img.shields.io/badge/build-passing-brightgreen.svg)

VenuWed is a hassle free wedding service that allows couples to easily find the best rated wedding venues within their budget and book an inspection instantly; saving time and money. Simply type in your desired location and all the nearby wedding venues will appear with ratings from real customers and upfront costing. After that you have the option to either book an inspection date and pay the venue directly online.

## view on heroku/trello
 https://venu-wed.herokuapp.com/
 https://trello.com/b/zJrs1sOn/venuwed-app

## Installation
$ git clone https://github.com/mariamantar/VenuWed_App.git

$ cd GigHelp

$ bundle install

$ rake db:migrate
### Requirements
Ruby 2.2.4
Rails 5.2.0

## Gems used
- bootstrap-sass - easily create a navbar, buttons and more.
- jquery-rails
- simple_form - creating forms easily
- devise  - user authetication
- toastr
- country select
- carrierwave
- mini_magick
- geocoder
- stripe
- pg search


## Problem -> Solution

Before coming up with the idea of VenuWed i had done a lot of research to see what the number one problem was for new couples when planning a wedding. Surprisingly the answer was always either time and budget.Most couples experience immense stress when in the wedding planning phase and this can be tough since there are a lot of areas that need thinking such as the dress the bride is going to wear, the cost of the venue and type of food that will be served as well as music played, what the bridesmaids will wear and who the bride and groom will invite. One problem was that couples were unable to see upfront costs for the venue per head as well as experiences from other customers so a review system was vital.

Another issue couples has experienced was the guest list, so i designed a system that allows couples to curate a guest list online and send out the invitations instantly, once the guests reply to rsvp the list captures and stores it automatically so that the couple can focus on other areas.

## ERD

A lot of time was spent putting together the entity relationship diagram with a lot of changes being made. The tool used was dbdesigner.net


## DESIGN DECISIONS

A lot of the design inspiration for Venuwed came for airbnb since the business model was very similar and that was actually where i took inspiration form with the color of the logo and layout of the venues. I decided to add a similar looking search bar on the homepage that allows customers to search for the desired venue location and also filter through the other venues. A big difference between airbnb and and venuwed is that customers are unable to upload venues, you have to be a company to upload a venue. This is because the aim for venuwed was to be able to allow couples to connect to real companies and venues instantly instead of allowing anyone to upload a venue. One difficulty that i experienced was getting the company check box to work, in order for it to work it had to be stored in the database so that the company form would render once they signed up. I used bootstrap for the navigation bar and created a dropdown menu for easy navigation. At first i thought using gravatar would be a good option for the dropdown avatar but i experienced some issues getting an avatar to render each time the user signs up so i switched up for a glyphicon instead.


![alt text](https://i.imgur.com/U7XeyZa.png)

## Project plan estimation

![alt text](https://i.imgur.com/A3vXs5R.png)

## Wireframes

When i first started wire framing on paper i experienced a lot of difficulty with how the application would be used since i wanted to add a lot of unique features.I created multiple drafts before settling on the final design for both venues to be able to upload and customers to be able to instantly book a date or inspection.


![alt text](https://i.imgur.com/outhtNn.png)
![alt text](https://i.imgur.com/7jOvUaY.png)
![alt text](https://i.imgur.com/mjkp4bx.png)
![alt text](https://i.imgur.com/jSSO9tu.png)
![alt text](https://i.imgur.com/UpayXNN.png)
![alt text](https://i.imgur.com/9IyaGjy.png)
![alt text](https://i.imgur.com/qpgIYfa.png)

## User Story

User should be able to register as a customer or a venue via company check box, user then enters in a form and should be redirected to their profile. From there the user should be able to add venues if they are a company or search for venues and book a date/pay if they are a customer looking for a venue. By using geocoder the user is able to see exactly where the venue is located.

## Future Improvements
- Add a proper search feature with map
- Allow users to receive text message via phone
- include other options for baby shower and wedding dresses
- Add a video option for venue owners
- Live chat system integrated
- Calendar connected to inspection button
- Review system that can add pictures



## License
[MIT](https://choosealicense.com/licenses/mit/)
