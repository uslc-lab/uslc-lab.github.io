---
title: "Projects"
layout: textlay
excerpt: "Secure Learning and Control Lab at Uppsala University."
sitemap: false
permalink: /allprojects.html
---

# All projects

### Ongoing projects

{% for project in site.data.project %}

{% if project.ongoing == 1 %}
<div class="row">
<div class="well">

#### {{ project.title }} ({{ project.period}})

**Call:** {{project.category}}, *funded by the* {{ project.agency}}

**Awarded to:** {{project.lead}}

**USLC Members:** {{project.member}}

<a data-toggle="collapse" href="#{{project.key}}-bib"  class="btn-abstract" style="text-decoration:none; color:#ebebeb; hover:#ebebeb;" role="button" aria-expanded="false">**Popular Abstract**</a>
<div class="collapse" id="{{project.key}}-bib"><div class="well-abs">
{{ project.summary }}
</div></div>
</div>
</div>

{% endif %}

{% endfor %}

### Past projects

{% for project in site.data.project %}

{% if project.ongoing == 0 %}
<div class="row">
<div class="well">

#### {{ project.title }} ({{ project.period}})

**Call:** {{project.category}}, *funded by the* {{ project.agency}}

**Awarded to:** {{project.lead}}

<a data-toggle="collapse" href="#{{project.key}}-bib"  class="btn-abstract" style="text-decoration:none; color:#ebebeb; hover:#ebebeb;" role="button" aria-expanded="false">**Popular Abstract**</a>
<div class="collapse" id="{{project.key}}-bib"><div class="well-abs">
{{ project.summary }}
</div></div>
</div>
</div>
<br/>

{% endif %}

{% endfor %}
