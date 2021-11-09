---
layout: portfolio
title:  Beat the Wall
categories: portfolio
image: images/projects/beatthewall/beatthewall.png
tagline: Installation for running events, made in interaction design project course

shortdesc: Beat The Wall is an interactive installation, designed as a side event for running competitions. The idea is to provide the wave as a virtual opponent that can be adjusted in speed.

context: Interaction Design Project course, semester 3 of Interaction Design & Methodologies Master
duration: 8 weeks
used_skills: Arduino, Processing (language), electronics, soldering, web development (HTML/CSS, ZURB Foundation)
division_of_work: The project was executed in a group of 5 people. Everybody was involved in the design an concept phase. Later work was split into electronics/programming and building the physical prototype. I wrote a part of the Arduino code, made the Processing client, soldered one of the motor modules and was involved with the final assembly.
---

The Beat the Wall project was executed during the Interaction Design Project course. The goal for this years projects was to enhance big outdoor sports events. We decided to create an installation that provides a fun side event for visitors of marathon races. In the spirit of running, visitors can participate in a casual sprint race competing against a virtual competitor. The competitor's speed is visualized by a wall installation.

<iframe src="https://player.vimeo.com/video/113342246?h=d182b11bd1" class="vimeo" frameborder="0" allow="autoplay; fullscreen; picture-in-picture" allowfullscreen></iframe>
<p><a href="https://vimeo.com/113342246">Building Beat The Wall on Vimeo</a>.</p>

Our intention with this installation was to meet some of the goals that were set by the event organizers. This includes improving the festive atmosphere at the event and attracting people to specific areas along the track. The engaging nature of this installation should be especially exciting for children which can get bored quickly when watching the race gets too monotonous. Also the unconventional visualization should be interesting and memorable for spectators.


{% include gallery.html base_url="/images/projects/beatthewall/"
                        images="01.jpg,02.jpg,03.jpg,04.jpg,05.jpg"%}

## Hardware
The installation was built with vertical transparent pipes which are filled with styrofoam. Motors under the pipes are turned on in sequence and create a wave of styrofoam moving along the wall. The installation was limited to be five metres long to make the project viable in terms of costs, build time etc. An improved version would be 20 metres or more to offer a decent distance for a race.

* Used parts include: 1 Arduino MEGA, 48 DC motors,  24 H-bridges, 12 shift register ICs, 192 diodes and ~300m cable
* Fan blades are printed with a 3D printer
* The Arduino communicates with a Processing app. This app is running on a computer and outputs sounds that fit the selected competitor when the selection is done.

## Process
* We started of with __brainstorming__ ideas and pitched the best ones to our teacher and co-students.
* Afterwards plenty of __prototypes__ were built to see which kind of visualization provided enough speed and visibility. There were prototypes of fans blowing at sequins, solenoids moving disks and then several ways to display the movement through styrofoam in pipes.
* Finally the installation was created by distributing the responsibilities to team members like building the wall and pipes, designing and printing the fans for the motors, soldering the electronics and writing the code.