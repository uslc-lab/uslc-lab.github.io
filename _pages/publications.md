---
title: "Secure Learning and Control Lab - Publications"
layout: gridlay
excerpt: "Secure Learning and Control Lab -- Publications."
sitemap: false
years: [2022, 2021, 2020, 2019, 2018, 2017, 2016, 2015, 2014, 2013, 2012, 2011, 2010]
permalink: /publications/
---
<!-- _pages/publications.md -->

# Publications


(See also the personal webpage of our group members)


## List of Publications
 

<div class="publications">

{%- for y in page.years %}
  <h3 class="year">{{y}}</h3>
  {% bibliography -f uscl_publications -q @*[year={{y}}]* %}
{% endfor %}

</div>