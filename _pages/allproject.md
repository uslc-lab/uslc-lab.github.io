---
title: "Project"
layout: textlay
excerpt: "Secure Learning and Control Lab at Uppsala University."
sitemap: false
permalink: /allproject.html
---

### Ongoing projects
<br/>

{% for project in site.data.project %}

{% if project.ongoing == 1 %}

**Title:** {{ project.title }} ({{ project.period}})

{{project.category}} *funded by* {{ project.agency}}

**Awarded:** {{project.lead}}

**Members:** {{project.member}}

**Summary:** {{ project.summary}}

<br/> 

{% endif %}

{% endfor %}

### Past projects
<br/>

{% for project in site.data.project %}

{% if project.ongoing == 0 %}

**Title:** {{ project.title }} ({{ project.period}})

{{project.category}} *funded by* {{ project.agency}}

**Summary:** {{ project.summary}}

<br/>

{% endif %}

{% endfor %}
