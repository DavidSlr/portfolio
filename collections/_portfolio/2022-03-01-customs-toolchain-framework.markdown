---
layout: portfolio
title:  DaziT - Digital customs tools
categories: portfolio
image: images/projects/customs/square.png

tagline: Building an application framework and applications for a modern digital workflow in the customs offices of Switzerland

context: Full time client project, embedded as a UX designer
duration: 4 years

used_skills: Stakeholder management, BA collaboration, framework design, design systems, Figma, Figma components and library, Jira, SAFe
division_of_work: Changing UX team with 0-4 other UX and product designers and a dev team for the framework
---

[DaziT](https://www.bazg.admin.ch/bazg/en/home/topics/dazit.html) is one of the biggest digital transformation projects in Switzerland. It aims to make processes of the swiss customs digital and adapt to the requirements of data exchange between countries. During this project a whole suite of applications for different customs processes was developed. This includes goods declaration, approval management, tax exemptions, border controls etc.

As a part of the development the [Quadrel application and UI framework](https://www.bazg.admin.ch/bazg/de/home/themen/dazit/vereinfachung-und-digitalisierung/entwicklerplattform.html) was built. The goal was to leverage standardized components to reduce frontend development effort in the application teams, make maintenance easier and improve UX/UI consistency.

I worked here as a UX designer for close to 4 years and primarily worked with the application teams to plan their concepts and make sure that the framework is used within its capabilities, standard design decisions are followed and UX best practices are considered. Further, I communicated the requirement of applications back to the framework team and made proposals how framework extensions could work and bring value to the whole program.


{% include gallery.html base_url="/images/projects/customs/"
                        images="mock1-passar.png,mock2-prezius.png,mock3-prezius.png,mock4-prezius.png"%}

## Application Design Process

- Process and data structure were analyzed by business analysts (BA)
- Communication with BAs about application requirements and which information needs to be gathered about process and user workflow
- Drafting user flows, collecting gaps in process knowledge as well as framework abilities
- Working with BAs to fill knowledge gaps
- Working with the framework team to figure out how to develop framework extensions or workarounds to the app requirements
- Preparing higher fidelity mockups and prototypes of the application in Figma
- Review with the prototypes with the framework team for feasibility as well as review with BAs and remaining stakeholders if requirements are met

{% include gallery.html base_url="/images/projects/customs/"
                        images="proc-user-flow.png,proc-suchverfahren.png,proc-figma.png"%}

## Framework Design Process

- Gathering and preparing of domain context and requirements
- Preparing mockups of currently available ways to solve the requirements with framework components
- Preparing drafts of framework extensions that serve the app requirements better
- Review and discussion of possible solutions with the framework team
- Iterating on component drafts based in review outcomes
- Creation of JIRA stories with necessary resources and decisions to prepare implementation by the development team
- Problem solving and iteration during development
- Quality assurance after development finished

## FigJam Component Library

On top of our usual Figma component library I established a FigJam board that includes a majority of our components. This lets Business Analysts copy & paste those components to their own FigJam Boards and easily compose their own UI drafts. This has a few limitations but is very easy to learn and avoids more difficult concepts like the layer tree, auto layout and component configuration while allowing text changes and component variants. This was very valuable when we only had 1-3 UX designers to support 14+ application teams as it enabled BAs to prepare simple concepts and discuss them with stakeholders.

{% include gallery.html base_url="/images/projects/customs/"
                        images="ba-toolkit.png,ba-toolkit2.png"%}

In this screencast you can see how the UIs can be quickly composed with the FigJam components.

{% include video.html url="/images/projects/customs/figjam.mp4" %}


## Project Takeaways

- There is a lot of potential to reimagine existing processes with the new possibilities of digital data exchange and processing in mind. UX designers that are included early on can analyze the context and draft new and efficient workflows.

 - In long-running, multi-team projects it's hard to keep UIs consistent. The design system and UI framework helped to achieve much better consistency, but extending them for new features and achieving consistent adoption across teams remained challenging. Good communication and stakeholder buy-in might be something to improve on.

- A changing framework and design system requires agility through the whole program to achieve shorter integration cycles and continuous improvement. If the framework can't provide the full functionality in time, teams can provide a workaround or reduced functionality to be able to ship and test quickly. Later on, teams can adopt new components and best practices to improve their application and improve coherence through the whole range of products.