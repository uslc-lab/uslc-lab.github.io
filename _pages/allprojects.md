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


<div class="btn-group">
  <a class="btn-abstract" data-toggle="collapse" href="#{{project.key}}-abs">**Popular Abstract**</a>
  <a class="btn-papers" data-toggle="collapse" href="#{{project.key}}-bib">**Selected papers**</a>
</div>


<div class="collapse" id="{{project.key}}-abs"><div class="well-abs">
{{ project.summary }}
</div></div>

<div class="collapse" id="{{project.key}}-bib"><div class="well-abs"><div class="publications">
{% bibliography -f uscl_publications -q @*[grant={{project.key}} || granta={{project.key}} || grantb={{project.key}} || grantc={{project.key}}]* %}
</div></div></div>

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

<div class="btn-group">
  <a class="btn-abstract" data-toggle="collapse" href="#{{project.key}}-abs">**Popular Abstract**</a>
  <a class="btn-papers" data-toggle="collapse" href="#{{project.key}}-bib">**Selected papers**</a>
</div>


<div class="collapse" id="{{project.key}}-abs"><div class="well-abs">
{{ project.summary }}
</div></div>

<div class="collapse" id="{{project.key}}-bib"><div class="well-abs"><div class="publications">
{% bibliography -f uscl_publications -q @*[grant={{project.key}} || granta={{project.key}} || grantb={{project.key}} || grantc={{project.key}}]* %}
</div></div></div>


</div>
</div>
<br/>

{% endif %}

{% endfor %}
