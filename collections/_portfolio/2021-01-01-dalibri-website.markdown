---
layout: portfolio
title:  dalibri website
image: images/projects/dalibri/dalibri-square.png

tagline: New content and redesign of our agency website

context: Internal project of dalibri
duration: 4 weeks
used_skills: Web UX, visual design, web development (html, sass)
division_of_work: Content produced with photographers and content writer, structure developed in workshops with dalibri staff
---

<div class="images">
    <a href="/images/projects/dalibri/full.jpg" class="float-right"><img src="/images/projects/dalibri/full.jpg" alt="The finished dalibri start page in full length: a teal hero section with the logo and claim, a client logo bar, an agency introduction, three expertise blocks for data analytics, user experience design and software development, and a contact section."></a>
</div>

In 2020, dalibri's website was still one that has been put together in two evenings. It was clear that potential new clients that looked us up should get a better first impression. The goal was to have a professional but friendly presentation that shows what services dalibri provides at a quick glance and a more detailed level.

## Process

- Collecting and sorting the outline and content in a workshop
- Creating a wireframe for the start page
- Developing text with a content writer in interviews and iterations
- Exploring design direction
- Deciding on design direction and iteration close to final design
- Implementing the responsive website with support for two languages

## Design & Tech Stack

- Designs and wireframes were done in Figma
- The website was built with HTML, CSS (SASS) and Jekyll as a static site generator
- The code was checked into a bitbucket repository and deployed with a bitbucket pipeline script

{% assign gallery_base = "/images/projects/dalibri/" %}
{% capture gallery %}
{% include gallery-item.html src="structure.jpg" alt="Workshop whiteboard where the three service areas user experience, software development and big data are broken down into sticky notes such as UX research, prototyping and APIs." %}
{% include gallery-item.html src="exploration.png" alt="Four alternative design directions for the start page side by side, from a photo-led teal layout to a dark neon variant." %}
{% endcapture %}{% include gallery.html items=gallery %}