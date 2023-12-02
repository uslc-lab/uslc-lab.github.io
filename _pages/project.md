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
{{**Title:**}} {{ project.title }} {{ &lpar;project.period&rpar; \n }}
{{ project.agency}} {{ &comma;project.category \n }}
{{ project.summary | markdownify}}
<br/>

{% endfor %}

### Past projects
<br/>
