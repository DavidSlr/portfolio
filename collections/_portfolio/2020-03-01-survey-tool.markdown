---
layout: portfolio
title:  Enterprise Reporting Tool
categories: portfolio
image: images/projects/survey/square.png

# Home page "Selected work": position and year label
featured: 3
period: 2020
setting: Client project at Cognizant
short_title: Enterprise Reporting Tool

tagline: A facelift brief that turned into a workflow redesign for enterprise-wide reporting

context: Client project at Cognizant for a large international enterprise
duration: 10 weeks

used_skills: User interviews, affinity diagramming, workflow analysis, stakeholder workshops, wireframing, Sketch, InVision, Drama
division_of_work: Design by me, implementation by the client's web development team
---

The client asked for a modern UI for a 20-year-old in-house application that collects figures from departments across a large enterprise, with the structure left as it was. A central team checks every submission, and the figures go into the company's reporting.

I convinced the client to start with user interviews. They showed that the friction was in the workflow, not in the look.

## What the interviews showed

- **Finding the right questionnaire took too long.** The application was slow, and people needed several filter steps on every visit before they saw their own questionnaire.
- **Questionnaires are not filled in by one person in one sitting.** People enter a few values, go and find the rest, and come back days later. Different parts come from different colleagues. The old application only saved a complete and valid questionnaire, so unfinished entries could get lost.
- **Reviews happened outside the application.** When the central team found a problem, they wrote an email or called.
- **Comment fields were too small** for the explanations people had to give.

With two to six questionnaires a year, nobody learns the application. Every visit starts from scratch, so the application has to remember the context for its users. Three decisions came out of that.

## 1. Your current questionnaire first, without setting a filter

The old dashboard showed everything the account could see. To get to their own questionnaire, people picked a division, a report object and a period, and waited for the page to reload after each step.

<figure class="annotated images border">
    <div class="stage">
        <a href="/images/projects/survey/old_dashboard.png"><img src="/images/projects/survey/old_dashboard.png" title="Before: the old dashboard, rebuilt without client details" alt="The old dashboard, rebuilt without client details: a dense grey page with a green header with a parameters panel for profile, unit system and report object state, division buttons and a report object dropdown, and below it a table of ten questionnaires with from and to date dropdowns, columns for year, site, questionnaire, coded processing status and role, and edit icons on every row."></a>
        <span class="marker" style="left: 64.2%; top: 42.1%" aria-hidden="true">1</span>
        <span class="marker" style="left: 25.2%; top: 53.6%" aria-hidden="true">2</span>
        <span class="marker" style="left: 72.6%; top: 68.6%" aria-hidden="true">3</span>
    </div>
    <ol class="legend">
        <li>Division and report object have to be picked by hand, although the account belongs to one department.</li>
        <li>The timeframe has to be set with month and year dropdowns, which takes several clicks.</li>
        <li>Status is written in internal codes and is hard to scan for open tasks.</li>
    </ol>
</figure>

The account already knows which department and location a person belongs to. The new dashboard uses that and sorts by date, newest first. The current questionnaire and the last few are on top without a single filter. The filters are still there for anyone who needs another location or an older year.

<figure class="annotated images border">
    <div class="stage">
        <a href="/images/projects/survey/dashboard.png"><img src="/images/projects/survey/dashboard.png" title="After: the new dashboard" alt="The new dashboard: a filter row for date, division, report type, state and location above a table of questionnaires sorted by date, newest first, each row showing month, region, questionnaire type and a status in plain words with the time of the last edit."></a>
        <span class="marker" style="left: 66%; top: 29.6%" aria-hidden="true">1</span>
        <span class="marker" style="left: 23.5%; top: 26.2%" aria-hidden="true">2</span>
        <span class="marker" style="left: 15.8%; top: 34.3%" aria-hidden="true">3</span>
        <span class="marker" style="left: 90.6%; top: 43.4%" aria-hidden="true">4</span>
    </div>
    <ol class="legend">
        <li>Division and location come from the account. They can be changed, but rarely need to be.</li>
        <li>To find older reports, the timeframe is set in quarters. That takes far fewer clicks and matches the survey cadence: yearly, half-yearly or quarterly.</li>
        <li>Newest first, so the questionnaire that is due now is the first row.</li>
        <li>Status says in plain words what happens next, for example that the questionnaire waits for the coordinator.</li>
    </ol>
</figure>

## 2. Fill in over several days, with several people

A questionnaire is a collection job. Someone fills in what they know, asks a colleague for the rest and comes back later. The redesign supports that instead of expecting one complete session.

<div class="compare">
    <div class="before">
        <p class="compare-label">Before</p>
        <ul>
            <li>Saving only works when everything is complete and valid</li>
            <li>Users started collecting data outside of the tool as a workaround</li>
            <li>No overview of what is still missing</li>
            <li>No trace of who contributed what</li>
        </ul>
    </div>
    <div class="after">
        <p class="compare-label">After</p>
        <ul>
            <li>Every value is saved after it is entered. Come back any time and continue where you left off.</li>
            <li>Work with multiple users on the same report.</li>
            <li>Completion per category, and a list of what to fix before submitting</li>
            <li>Each category shows who edited it last</li>
        </ul>
    </div>
</div>

## 3. Reviews in the application instead of in inboxes

Two people in the central team checked every submission. When a number looked wrong, they wrote an email or called, and the department corrected and submitted again. The department did not know whether its questionnaire had been accepted, and the central team kept track of open questions in their own mail.

In the redesign, inconsistencies are flagged on the category they belong to while people fill in, so many problems are fixed before the central team sees them. Supervisor and coordinator validate in the application, and everyone sees the same status.

The questionnaire overview brings decisions 2 and 3 together.

<figure class="annotated images border">
    <div class="stage">
        <a href="/images/projects/survey/quest_overview.png"><img src="/images/projects/survey/quest_overview.png" title="The questionnaire overview" alt="The questionnaire overview screen: six question categories listed with their completion status and who last edited them, a due date countdown, a list of editors, a flagged inconsistency, and a three-step progress bar from data entry through supervisor to coordinator validation."></a>
        <span class="marker" style="left: 78.6%; top: 44.1%" aria-hidden="true">1</span>
        <span class="marker" style="left: 56.8%; top: 31.6%" aria-hidden="true">2</span>
        <span class="marker" style="left: 43.3%; top: 50.9%" aria-hidden="true">3</span>
        <span class="marker" style="left: 36.4%; top: 78.4%" aria-hidden="true">4</span>
        <span class="marker" style="left: 31.6%; top: 89.1%" aria-hidden="true">5</span>
    </div>
    <ol class="legend">
        <li>Each category shows how many questions are answered, so anyone coming back sees what is left.</li>
        <li>All editors and the responsible supervisor are listed, and each category shows who edited it last. Who to ask about a number is on the page.</li>
        <li>An inconsistency is flagged on its category before the central team has to find it.</li>
        <li>The three validation steps are visible to the department, not only to the reviewers.</li>
        <li>Submitting is possible once all categories are complete, and the page says what is still missing.</li>
    </ol>
</figure>

## What we kept

The old application already showed last period's answer next to each field, warned when a value looked implausible and showed which inputs a calculated value came from. That catches mistakes before the central team has to, so all of it stayed. What changed is room to explain: comment fields became large text areas.

<div class="figures single images border">
    <figure>
        <a href="/images/projects/survey/quest_category.png"><img src="/images/projects/survey/quest_category.png" title="One category of a questionnaire" alt="One questionnaire category open for editing: questions with yes-no toggles and number fields that each show the previous month's answer, a full-width comment field, a warning when an entered value looks implausible, and a calculated value with the inputs it was computed from."></a>
        <figcaption>A category with previous values, a plausibility warning, a large comment field and a calculated value.</figcaption>
    </figure>
</div>

## How I worked

After kickoff workshops with the client I interviewed five users at different locations and sorted the findings in an affinity diagram with the team. I mapped the review process with the stakeholders. Wireframes and click prototypes went to the central team for review, because they check every questionnaire and chase every correction. The final designs went to the developers as Sketch mockups in Zeplin and as InVision prototypes.

{% assign gallery_base = "/images/projects/survey/" %}
{% capture gallery %}
{% include gallery-item.html src="process_actors.jpg" title="Review process mapped out with stakeholders" alt="Whiteboard flow diagram where sticky notes for the data owner, input user and data evaluation roles are linked through steps such as receive info email, input data, release finished data and check if questionnaire is valid, ending at Done." %}
{% include gallery-item.html src="affinity_diagramming.jpg" title="Affinity diagramming of interview findings" alt="A window covered in colour-coded sticky notes grouped under the headings ideas, investigate, facts, problems and questions." %}
{% endcapture %}{% include gallery.html items=gallery %}

## What I take from it

- **The application has to remember, because its users don't.** For a tool people open a few times a year, the account, the last questionnaire and every value already typed in are the best help there is.
- **Hand over a system, not just screens.** Design and development ran one after the other, and by the time the screens were built I was on another project. During development, sizes and spacing drifted from the per-screen specs in Zeplin, and there was no designer left to review the result. Readability and user satisfaction suffered. Today I hand over components and tokens and review the build before release, as on [DaziT](/portfolio/2022-03-01-customs-toolchain-framework.html).
- **A few interviews can change a brief.** The client asked for a new look. Five interviews were enough to show how much a redesign could improve efficiency and user satisfaction. That convinced the client to aim higher.
