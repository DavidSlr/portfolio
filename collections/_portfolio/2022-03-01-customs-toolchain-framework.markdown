---
layout: portfolio
title:  DaziT - Digital customs tools
categories: portfolio
image: images/projects/customs/square.png

tagline: UX for 15 specialist applications and the shared UI framework of the Swiss customs' digital transformation

context: Full time client project, embedded as a UX designer in the UI framework team
duration: Close to 4 years (03/2022 - 12/2025)

used_skills: Workflow analysis, user flows, component design and specification, design system (Figma library and tokens), usability testing, stakeholder workshops, Jira, SAFe
division_of_work: UX team of one to five designers, changing over time, working with the framework's development team and the business analysts and product owners of the application teams
---

[DaziT](https://www.bazg.admin.ch/bazg/en/home/topics/dazit.html) is the digital transformation programme of the Swiss customs authority. Paper forms and legacy software are replaced by around 40 applications, from goods declaration to precious metals control. All of them are assembled from one low-code UI framework, [Quadrel](https://www.bazg.admin.ch/bazg/de/home/themen/dazit/vereinfachung-und-digitalisierung/entwicklerplattform.html), so that they behave the same and the teams write little frontend code of their own.

I was a UX designer in the framework team. I planned user flows with the application teams and designed the framework components those flows needed. Three decisions from that work are described below.

<dl class="facts">
    <div><dt>programme budget</dt><dd>CHF 393 m</dd></div>
    <div><dt>applications I worked on</dt><dd>15</dd></div>
    <div><dt>UX designers for ~40 applications</dt><dd>1 - 3</dd></div>
</dl>

## 1. One screen instead of a hunt for the right form

Businesses that work with precious metals need marks and permits from the control office. To request one, they had to know which request applied to them, find the matching PDF form on the website and fill it in. Nothing showed them what they already held, because none of it was digital.

<div class="compare">
    <div class="before">
        <p class="compare-label">Before</p>
        <ol>
            <li>Work out which mark or permit applies</li>
            <li>Find the matching PDF form on the website</li>
            <li>Submit form with complete client information every time</li>
            <li>Receive permits on paper</li>
        </ol>
    </div>
    <div class="after">
        <p class="compare-label">After</p>
        <ol>
            <li>See available permits and their purpose</li>
            <li>Requirements are checked against your account</li>
            <li>Request a new permit, client information is managed in the account</li>
            <li>Held permits are attached to the account</li>
        </ol>
    </div>
</div>

Our earlier draft was a wizard that began with picking a form. That works for someone who already knows which form they need. We put this overview in front of the wizard as a step zero, and it answers the questions in the order people have them.

<figure class="annotated images border">
    <div class="stage">
        <a href="/images/projects/customs/mock4-prezius.png"><img src="/images/projects/customs/mock4-prezius.png" title="New request dialog for marks and permits" alt="A New request dialog offering grouped choices for marks, melting permits, purchasing permits and agreements. Options the account is not yet eligible for show their prerequisite instead of a link, and a purchasing permit the account already holds shows its approval date and a link to open it."></a>
        <span class="marker" style="left: 17.3%; top: 15.2%" aria-hidden="true">1</span>
        <span class="marker" style="left: 48.5%; top: 36.7%" aria-hidden="true">2</span>
        <span class="marker" style="left: 29.1%; top: 50.6%" aria-hidden="true">3</span>
        <span class="marker" style="left: 17.3%; top: 60.8%" aria-hidden="true">4</span>
    </div>
    <ol class="legend">
        <li>Each of the nine request types says in one sentence what it is for. They are sorted into four groups, so the choice starts with the area and not with a form number.</li>
        <li>A type the account does not qualify for stays visible and names what is missing. A melter's mark, for example, requires a melting permit first.</li>
        <li>A type the account qualifies for starts its request right here. The client details come from the account and are not entered again.</li>
        <li>A permit the account already holds shows its approval date and opens directly, so nobody requests it twice.</li>
    </ol>
</figure>

## 2. Lists that work before anyone touches a filter

Application teams often asked for two things: a date-range filter for their lists, and one large screen that shows everything at once, with live previews and drag and drop. Both were hard to build from framework components. Both also skipped a simpler question: what is the user trying to find?

<div class="compare">
    <div class="before">
        <p class="compare-label">Asked for</p>
        <ul>
            <li>A date-range filter to narrow the list</li>
            <li>One screen with every data point of every object</li>
            <li>Live preview and drag and drop between areas</li>
        </ul>
    </div>
    <div class="after">
        <p class="compare-label">Built instead</p>
        <ul>
            <li>A default sort order: newest first, combined with priority</li>
            <li>An overview with only the fields needed to pick the right object</li>
            <li>A detail page that opens once the object is chosen</li>
        </ul>
    </div>
</div>

With that sort order the recent and important cases sit at the top, and one category filter is usually enough to reach the rest. The overview carries only what it takes to pick an object. Everything else moves to the detail page, where it concerns one object and no longer clutters every row.

What we gave up were the rich single-screen interactions. In return the screens kept a clear hierarchy and clear rules for when data is saved, and lists behave the same in every application.

<div class="figures images border">
    <figure>
        <a href="/images/projects/customs/mock5-passar.png"><img src="/images/projects/customs/mock5-passar.png" title="Overview: the list of goods declarations with seven columns" alt="The Passar list of goods declarations: a filter bar for type, reference number, recipient and status above a table that lists type, reference number, recipient, holder type, arrival time, a coloured status tag and a tag for special cases such as dangerous goods."></a>
        <figcaption>Overview: seven columns, enough to pick an entry.</figcaption>
    </figure>
    <figure>
        <a href="/images/projects/customs/mock1-passar.png"><img src="/images/projects/customs/mock1-passar.png" title="Detail: one goods declaration with all its data in standard components" alt="A single validated import declaration in Passar. A header with status and key dates sits above sections for the declarant and the recipient, further parties, financial data, a summary of the items, the item table and additional information."></a>
        <figcaption>Detail: one goods declaration, with all its data in standard components.</figcaption>
    </figure>
</div>

## 3. A kit that lets teams draft their own screens

Business analysts and product owners in the application teams drafted screens to show their ideas, in PowerPoint, Miro or wireframing tools. Many of those drafts could not be built. Quadrel components fix layout, sizes and colours and only allow configuration. With one to three UX designers for around 40 applications and many engineering teams, we could not redraw every draft either.

On my own initiative I built a FigJam board that holds most of our components. Analysts copy components onto the whiteboard, change texts and variants, and compose a screen. FigJam has no layer tree, no auto layout and no component configuration, so there is little to learn, and it is hard to draw something the framework cannot do.

The kit cannot do fine layout. A first draft for a discussion with stakeholders does not need it.

About five teams used the kit. Their first drafts were made of standard components, which put them closer to what could be built, and the teams no longer had to wait for a UX designer to get started.

<div class="figures images border">
    <figure>
        <a href="/images/projects/customs/ba-toolkit.png"><img src="/images/projects/customs/ba-toolkit.png" title="Business analyst FigJam toolkit for simple mockups" alt="The BA Toolkit FigJam board: an instructions panel with best practices, a User Flow section, a large Components section holding tables, form sections, dialogs and notification banners, and a Templates section for the Quadrel layout system."></a>
        <figcaption>The board: instructions, components and page templates.</figcaption>
    </figure>
    <figure>
        <a href="/images/projects/customs/ba-toolkit2.png"><img src="/images/projects/customs/ba-toolkit2.png" title="Form components in the FigJam toolkit" alt="The Form Fields page of the toolkit, showing input, dropdown, radio button, checkbox, date picker and textarea components in one-column and two-column widths, plus vertical variants."></a>
        <figcaption>Form fields, ready to copy and relabel.</figcaption>
    </figure>
</div>

{% include video.html url="/images/projects/customs/figjam.mp4" caption="Silent screen recording of the FigJam toolkit in use: labelled form field components are copied, aligned and rearranged on the board to compose a customs goods declaration screen with a section of entry fields, help descriptions and cancel and save buttons." %}

## How I worked

For each application I worked out the requirements with business analysts and users, mapped the flow, and collected what the framework could not do yet. Those gaps went to the framework team as component proposals with specifications and user stories. Prototypes went back to analysts and users for review and usability tests.

{% assign gallery_base = "/images/projects/customs/" %}
{% capture gallery %}
{% include gallery-item.html src="proc-user-flow.png" title="User flow mapping of customer-facing account management" alt="A FigJam board titled Connex User Flow Mapping, where an overview screen branches into colour-coded lanes for adding a company, an association, a private person and a branch, plus adding a role, activating and viewing details, each lane holding a chain of linked screen thumbnails." %}
{% include gallery-item.html src="proc-suchverfahren.png" title="Process overview of customs communication with other countries - co-created with stakeholders" alt="A wide process board titled Suchverfahren Anforderungen und Prozess, mapping the enquiry and search-notice workflow across lanes of sticky notes and decision points, with rows of screen mockups beneath each step." %}
{% include gallery-item.html src="proc-figma.png" title="Request management for precious metals - UI design and prototyping in Figma" alt="A Figma file organised into sections for Prezius Info, the business partner view and the employee view, each holding rows of screens grouped by status such as draft, in progress, final check, supplement and rejected." %}
{% endcapture %}{% include gallery.html items=gallery %}

## What I take from it

- Most requests arrive as a solution: a filter, a preview, a drag and drop. The work is to find the question behind it, and the answer is often simpler than the request.

- Consistent adoption across more than 10 teams and 40 applications stayed hard to the end. Stakeholders all have ideas and expectations. It requires continuous tech evangelizing work. What helped most was explaining why a standard exists and finding a workable answer inside it.
