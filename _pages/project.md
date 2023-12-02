---
title: "Project"
layout: textlay
excerpt: "Secure Learning and Control Lab at Uppsala University."
sitemap: false
permalink: /project.html
---

### Ongoing projects
<br/>

{% for project in site.data.project %}

{% if project.ongoing == 1 %}

{{**Title:**}} {{ project.title }} {{ &lpar;project.period&rpar; \n }}
{{ project.agency}} {{ &comma;project.category \n }}
{{ project.summary | markdownify}}
<br/>

{% endif %}

{% endfor %}

### Past projects
<br/>

{% for project in site.data.project %}

{% if project.ongoing == 0 %}

{{**Title:**}} {{ project.title }} {{ &lpar;project.period&rpar; \n }}
{{ project.agency}} {{ &comma;project.category \n }}
{{ project.summary | markdownify}}
<br/>

{% endif %}

{% endfor %}
