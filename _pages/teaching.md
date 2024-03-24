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

<a data-toggle="collapse" href="#{{key}}-about" class="btn-about" role="button">**Course Content**</a>
<div class="collapse" id="{{key}}-about">
<div class="well-about">
{{course.about}}
</div> </div>
</div>
</div>

{% endfor %}
