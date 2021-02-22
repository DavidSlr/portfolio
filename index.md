---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: default

---

# David Schneller
<p class="tagline">UX Designer & Prototyper</p>

Hi, I am David. I am a UX designer, prototyper and former software developer who still likes to code. I am working for [dalibri](http://dalibri.com), a small team that offers their skills to client projects as contractors. If you need a UX designer for your team please get in touch.

{% for item in site.portfolio %}
### {{ item.title }}

{% endfor %}