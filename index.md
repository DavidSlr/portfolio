---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: default

---

# David Schneller
<p class="tagline">UX Designer & Prototyper</p>

Hi, I am David. I am a UX designer, prototyper and former software developer who still likes to code. I am working for [dalibri](http://dalibri.com), a small team that offers their skills to client projects as contractors. If you need a UX designer for your team please get in touch.

<a href="https://www.linkedin.com/in/davidslr" class="linkedin">
    <svg xmlns="http://www.w3.org/2000/svg" height="1.6rem" viewBox="0 0 512 512"><path d="M417.2 64H96.8C79.3 64 64 76.6 64 93.9V415c0 17.4 15.3 32.9 32.8 32.9h320.3c17.6 0 30.8-15.6 30.8-32.9V93.9C448 76.6 434.7 64 417.2 64zM183 384h-55V213h55v171zm-25.6-197h-.4c-17.6 0-29-13.1-29-29.5 0-16.7 11.7-29.5 29.7-29.5s29 12.7 29.4 29.5c0 16.4-11.4 29.5-29.7 29.5zM384 384h-55v-93.5c0-22.4-8-37.7-27.9-37.7-15.2 0-24.2 10.3-28.2 20.3-1.5 3.6-1.9 8.5-1.9 13.5V384h-55V213h55v23.8c8-11.4 20.5-27.8 49.6-27.8 36.1 0 63.4 23.8 63.4 75.1V384z"/></svg>
    my LinkedIn
</a>

## Portfolio

<div class="portfolio-list">
{% assign portfolio = site.portfolio  | sort: 'date' | reverse %}
{% for item in portfolio %}
<div class="portfolio-teaser">
    <img src="{{ item.image }}">
    <a href="{{item.url}}">
        <div class="overlay">
            <div class="label">
                <span class="title">{{item.title}}</span>
            </div>
        </div>
    </a>
</div>
{% endfor %}
</div>

{% include cv.html %}

## Get in touch
<div>
    <p>Find some more details and get in touch on <a href="https://www.linkedin.com/in/davidslr">LinkedIn</a> or <a href="https://www.xing.com/profile/David_Schneller">Xing</a>.</p>   
</div>