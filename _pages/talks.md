---
title: "Phong Lam - Talks"
layout: gridlay2
excerpt: "Phong Lam - Talks"
sitemap: false
tags: [10001, 10002,10003, 10004, 10005, 10006]
permalink: /talks/
---

# Talks

{% for talk in site.data.talk %}

<div class="row">
<div class="well">

#### {{ talk.title }} 

**Event:** {{talk.category}}

**Summary:** {{talk.summary}}

<a data-toggle="collapse" href="#{{project.key}}-bib"  class="btn-abstract" style="text-decoration:none; color:#ebebeb; hover:#ebebeb;" role="button" aria-expanded="false">**Popular Abstract**</a>
<div class="collapse" id="{{project.key}}-bib"><div class="well-abs">
{{ talk.summary }}
</div></div>
</div>
</div>

{% endfor %}
