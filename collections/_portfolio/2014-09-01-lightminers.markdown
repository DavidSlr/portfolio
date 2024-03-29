---
layout: portfolio
title:  Light Miners Game
tagline: Pervasive game prototype created for a design competition and research project
categories: portfolio
image: images/projects/lightminers/square.png

shortdesc: Light Miners is a pervasive game that is played with two teams. Team members use a smartphone app to locate game lanterns in the environment. When a player is close to a lantern, it can be conquered for the team. The lantern will then switch it's color to the team color. At the end of the round the team that had the most time of lanterns shining in their color wins.

context: Design contest held by the Interactive Institute in Göteborg
duration: 1 day concept, 5 days prototyping
used_skills: Mobile web (HTML, CSS)
division_of_work: The project was done in a group of four people. We created the concept together during contest day. For the prototyping I implemented the mobile app. The graphics were created by our graphic designer. The two other people worked on the lanterns (case, electronics and software).
---

My team created the concept for this game during a one day design competition. We were then invited to prototype the game during a three day trip to Schladming, Austria.

<div class="images">
    <a href="/images/projects/lightminers/long.png">
        <img src="/images/projects/lightminers/long.png" class="full-width">
    </a>
</div>


The lanterns contain a Raspberry Pi that connects to a WiFi network and polls its state and therefore color from a backend service. The app on the players' phones displays a map with the locations of all the lanterns and the distance to the closest one. A player can conquer the lantern by using the app and press "claim" in its vicinity. This will change the lantern state in the backend service and the lamp will change its color after polling the new state.

<iframe src="https://player.vimeo.com/video/112409420?h=d182b11bd1" class="vimeo" frameborder="0" allow="autoplay; fullscreen; picture-in-picture" allowfullscreen></iframe>
<p><a href="https://vimeo.com/112409420">Light Miners - Pervasive Game Prototype on Vimeo</a>.</p>


## Implementation

* We used [Parse.com](http://parse.com) as a backend that saves the game states and provides an API for CRUD operations.
* The electronics inside the lanterns include a Raspberry Pi that runs a Python script to get the data from the backend. The Raspberry Pi will communicate with an Arduino-compatible Teensy board that changes the color of the the LED strip. The boards are powered by a battery pack and built into a 3D-printed lantern housing.
* The app is a simple mobile website that is built with HTML, CSS, jQuery and jQuery mobile. Google Maps is used to display lanterns in the environment. During the testing it was used on iOS, Android and Windows Phone.

{% include gallery.html base_url="/images/projects/lightminers/"
                        images="01.jpg,02.jpg,03.jpg"%}

## Competition

This project was the entry of our group for a student competition. The aim of that competition was to let participants design a pervasive game that motivates players to explore the environment of a place like Schladming in Austria. The games were supposed to a use a backend that was created for the [Experimedia research project](https://www.ri.se/en/what-we-do/projects/experimedia). After creating a concept on the actual competition our team and another one were invited to Schladming, Austria to prototype the game concept.

## Project Takeaways
* Building a web app with jQuery and jQuery Mobile is great way to prototype an app concept that runs on most mobile platforms and is easy to deploy.
* The time it take to change the color of the lamps from the point of pressing the button in the app is usually fast enough. Sometimes the delay would be a bit longer which causes concerns in players if their action was successful.
* Having the tangible aspect of glowing lanterns in the game made it a whole lot more appealing than a pure digital game.

