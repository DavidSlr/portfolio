---
layout: portfolio
title:  RetroSpect Birdhouse
categories: portfolio
image: images/projects/retrospect/thumb.jpg

tagline: A birdhouse that helps you watch birds and keep memories 
shortdesc: The "RetroSpect" birdhouse is a system that combines a birdhouse for the garden with a cuckoo clock in the living room. The clock will notify the user about arriving birds and keep pictures of them. The chronological picture collection can be traversed by spinning the hand of the clock back or forward.

context: Tangible Interaction course, semester 1 of Interaction Design & Methodologies Master
duration: ~8 days
used_skills: Building physical protoypes, Arduino, Processing (language)
division_of_work: Project was executed in a group of 2, Concept, woodworking and electronics were done by both of us, programming was done by me
---

fullwidth projects/retrospect/long.jpg

 As soon as a bird apears at the birdhouse the small cuckoo will come out of the small door and inform the people in the living room that there is a bird to watch. The birdhouse will also safe a picture of the bird with the integrated webcam and save it on a connected computer. Users can go back in time by turning the hand of the clock to scroll through the picture archive on the computer. Additionally the clock has an LED indicator that will show how much birdfood is left in the birdhouse. The birdhouse was the final project of the Tangible Interfaces course.

vimeo 76945760

image_folder path: images/projects/retrospect/gal

##How it works
An IR heat sensor is built into the bird house to recognize birds. The ultra sonic sensor in the roof measures the filling level of the food storage. The clock hand is mounted on a rotary encoder. All those sensors are read by the Arduino. A Processing application is running on the computer displaying the photos of the birds. The Arduino is connected to the computer via USB and sends messages containing information about the presence of the bird, changes of the clock hand and amount of birdfood left to the application. In the roof of the birdhouse is a webcam. It is connected to the computer via USB. The Processing app will capture an image from the webcam when it gets a message about a present bird from the Arduino.