---
layout: portfolio
title:  Survey Tool
categories: portfolio
image: images/projects/survey/square.png

# Home page "Selected work": position, year label, context line, link name
featured: 3
period: 2020
setting: Client project at Cognizant
short_title: Survey Tool

tagline: Redesigning a 20-year-old web application for data collection

context: Client project at Cognizant
duration: 10 weeks

used_skills: User research, user interviews, Sketch, InVision, Drama, stakeholder management
division_of_work: The implementation was done by a web development team
---

<div class="images">
    <a href="/images/projects/survey/quest_overview.png" class="float-right"><img src="/images/projects/survey/quest_overview.png" alt="The survey overview screen: six question categories listed with their completion status, a due date countdown, a flagged inconsistency, and a three-step progress bar from data entry through supervisor to coordinator validation."></a>
</div>

The client had a web application to fill out surveys by departments all over the world. The application also provided ways to audit data in a multi-stage approval process. The interface was very outdated and tedious to handle.

The brief from the client said that they wanted to have a modern redesign of their application without any major changes of the structure. After some convincing, the client agreed to have a user research phase that helped us understand the usage patterns and pain points.

In the end the application was not just redesigned with a modern style and the company's corporate identity. Instead, the interface was also adapted to drop unnecessary complexity, clearly display survey progress and provide a more straightforward entry point to the currently relevant survey. This benefits the many users that only use the system one to three times per year.

The interface was changed for the presentation in this portfolio to not show client information and processes.


{% assign gallery_base = "/images/projects/survey/" %}
{% capture gallery %}
{% include gallery-item.html src="dashboard.png" title="Dashboard" alt="Dashboard listing submitted questionnaires, filtered by date, division, state and location, with each row showing region, questionnaire type and status." %}
{% include gallery-item.html src="quest_overview.png" title="Survey overview" alt="Survey overview with six question categories, their completion status, a flagged inconsistency and a three-step validation progress bar." %}
{% include gallery-item.html src="quest_category.png" title="One category of a survey with questions" alt="One survey category open for editing: warehousing questions with yes-no toggles and number fields that each show the previous month's answer, plus a warning when an entered value looks implausible." %}
{% endcapture %}{% include gallery.html items=gallery %}

## Design Process

- Kickoff workshops with the client
- Interviews with five users in different locations
- Sorting through results and discussing findings with stakeholders
- Wireframes to discuss UI and workflow changes with stakeholders
- User testing with click prototypes based on wireframes
- HiFi Mockups delivered with Zeplin and click prototypes for the developers
- Animations and interactions built as guide for developers with [Drama](https://www.drama.app)

{% assign gallery_base = "/images/projects/survey/" %}
{% capture gallery %}
{% include gallery-item.html src="process_actors.jpg" title="Review process mapped out with stakeholders" alt="Whiteboard flow diagram where sticky notes for the data owner, input user and data evaluation roles are linked through steps such as receive info email, input data, release finished data and check if questionnaire is valid, ending at Done." %}
{% include gallery-item.html src="affinity_diagramming.jpg" title="Affinity diagramming of interview findings" alt="A window covered in colour-coded sticky notes grouped under the headings ideas, investigate, facts, problems and questions." %}
{% include gallery-item.html src="interaction.gif" title="Draft of an animation to add conditional questions to a questionnaire" alt="Prototype animation of a questionnaire form in which a conditional question is added below an existing group of checkboxes." %}
{% endcapture %}{% include gallery.html items=gallery %}

## UX learnings
- In the old app the users had to set very specific filters to find the surveys they needed to fill out. Working with sorting and account-specific parameters yielded the most relevant surveys to the user for most use cases without any filtering and all other surveys with very few filter interactions.
- Reviews were handled outside the system by email or phone. Integrating this into the system made it a lot easier to keep track of states for user who fill out surveys as well as reviewers.
- The responsibility for different part of surveys is split in departments. Parallel data entry is therefore better supported via state visualization and display of the change history.

## Project Takeaways

Web applications for professionals are often accepted to be complex and less user friendly. The common attempt to solve this is to provide training for users. However, a lot of complexity can be hidden or processes can be better guided by the interface, which reduces the need for training.

When client stakeholders don't have experience with projects that include a user experience component, it is difficult for them to anticipate what UX design can do for the project. In this case it was obvious that a designer would help to create a more appealing interface. However, the stakeholders did not expect to change the workflow or interface beyond visual aspects like typography, colors etc. When they heard about the potential to increase satisfaction, reduce friction, reduce demand for support and training, as well as reduce user mistakes they were motivated to adapt.