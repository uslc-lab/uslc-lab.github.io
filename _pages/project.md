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
{ **Title:** { project.title }} {{ &#40; project.period &#41; \n }}
{ **Agency:** { project.agency}} {, { project.category \n }}
{ **Summary:** { project.summary | markdownify}}
<br/>

{% endfor %}

### Past projects
<br/>
