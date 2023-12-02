---
title: "Project"
layout: textlay
excerpt: "Secure Learning and Control Lab at Uppsala University."
sitemap: false
permalink: /project.html
---

# Ongoing projects

{% for project in site.data.project %}
{{ project.title }} {{ &#40 project.period &#41 | markdownify }}
{{ project.agency, project.category | markdownify }}
{{ project.summary | markdownify}}
<br/>

{% endfor %}
