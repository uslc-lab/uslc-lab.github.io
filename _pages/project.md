---
title: "Project"
layout: textlay
excerpt: "Secure Learning and Control Lab at Uppsala University."
sitemap: false
permalink: /project.html
---

# Ongoing projects

{% for project in site.data.project %}
{{ project.title, (project.period) }}
{{ project.agency, project.category }}
{{ project.summary | markdownify}}
<br/>

{% endfor %}
