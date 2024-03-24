---
title: "Phong Lam - Teaching"
layout: gridlay2
excerpt: "Phong Lam - Teaching"
sitemap: false
permalink: /teaching/
---

# Teaching

{% for course in site.data.teaching %}

<div class="row">
<div class="well">

#### {{ course.title }} 

**Level:** {{course.level}}

**Term:** {{course.term}}

**Location:** {{course.location}}

with **Teachers:** {{course.teachers}}


<a data-toggle="collapse" href="#{{project.key}}-bib"  class="btn-abstract" style="text-decoration:none; color:#ebebeb; hover:#ebebeb;" role="button" aria-expanded="false">**Course Content**</a>
<div class="collapse" id="{{project.key}}-bib"><div class="well-abs">
{{ course.about }}
</div></div>
</div>
</div>

{% endfor %}
