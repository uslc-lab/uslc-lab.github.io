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

**Event:** {{talk.event}}

**Summary:** {{talk.summary}}

<img src="{{ site.url }}{{ site.baseurl }}/assets/presentations/{{ talk.presentation }}" class="img-responsive" width="{{ theme-item.width }}" style="float: top"/>

</div>
</div>

{% endfor %}