---
title: "Phong Lam - Research"
layout: gridlay2
excerpt: "Phong Lam -- Research"
sitemap: false
tags: [10001, 10002,10003, 10004, 10005, 10006]
permalink: /research/
---


<img src="{{ site.url }}{{ site.baseurl }}/images/logopic/Personal_photo.JPG" class="img-responsive" width="15%" style="float: left"/>
# Research
My vision is to develop and apply computational methodologies aimed at understanding the atomistic mechanisms underlying the interactions between small molecules and therapeutic targets. By elucidating such mechanisms, we can streamline the drug discovery process, which is both costly and laborious.
<br />
<br />

## Structure-based drug design
Over the past two decades, significant strides have been made in computational resources and AI, revolutionizing various fields, including drug discovery. Among the methodologies employed, structure-based drug design (SBDD), centered around molecular docking, remains a cornerstone. Despite the advancements, fundamental concepts in computer-aided drug design (CADD) continue to be relevant today.

Recent years have witnessed a surge in leveraging artificial intelligence (AI), particularly machine learning and deep learning, to augment the accuracy and predictive power of molecular docking. AI methodologies have been instrumental in refining docking scoring functions and improving the enrichment rates of docking models.

<img src="{{ site.url }}{{ site.baseurl }}/images/posts/Docking.png" class="img-responsive" width="80%" class="center"/>


## Molecular dynamics simulation
The video illustrates how a drug molecule (montelukast) may interact with a protein (interleukin-33) in a physiological condition. This is one of the repurposed hits that has shown promising results in-vitro.

{% include youtubePlayer.html id="b0c43LOoPMw" %}

## Chemoinformatics and applications of machine learning in drug discovery



{% assign number_printed = 0 %}
{% for theme-item in site.data.research_themes %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if theme-item.highlight == 1 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}
{% if theme-item.long == 1 %}
<div class="col-sm-12 clearfix">
 <div class="well">
 {% if theme-item.hasimage == 1 %}
  <img src="{{ site.url }}{{ site.baseurl }}/images/themepic/{{ theme-item.image }}" class="img-responsive" width="{{ theme-item.width }}" style="float: top"/>
  {% endif %}
  <h3><pubtit>{{ theme-item.title }}</pubtit></h3>
  <p>{{ theme-item.description }}</p>
  <p>Team members: <em>{{ theme-item.authors }}</em></p>
  <p class="text-danger"><strong> {{ theme-item.news1 }}</strong></p>
  <p> {{ theme-item.news2 }}</p>
  <a data-toggle="collapse" href="#{{theme-item.key}}-bib"  class="btn-bib" style="text-decoration:none; color:#ebebeb; hover:#ebebeb;" role="button" aria-expanded="false">Selected papers</a>
<div class="collapse" id="{{theme-item.key}}-bib"><div class="well-abs"><div class="publications">
{%- for y in page.tags %}
{%- if y == theme-item.tag -%}
{% bibliography -f publications -q @*[tag={{y}}]* %}
{% endif %}
{% endfor %}
</div></div></div>
 </div>
</div>
</div>
{% else %}
<div class="col-sm-6 clearfix">
 <div class="well">
 {% if theme-item.hasimage == 1 %}
  <img src="{{ site.url }}{{ site.baseurl }}/images/themepic/{{ theme-item.image }}" class="img-responsive" width="{{ theme-item.width }}" style="float: top"/>
  {% endif %}
  <h3><pubtit>{{ theme-item.title }}</pubtit></h3>
  {{ theme-item.description }}
  <p>Team members: <em>{{ theme-item.authors }}</em></p>
  <p class="text-danger"><strong> {{ theme-item.news1 }}</strong></p>
  <p> {{ theme-item.news2 }}</p>
  <a data-toggle="collapse" href="#{{theme-item.key}}-bib"  class="btn-bib" style="text-decoration:none; color:#ebebeb; hover:#ebebeb;" role="button" aria-expanded="false">Selected papers</a>
<div class="collapse" id="{{theme-item.key}}-bib"><div class="well-abs"><div class="publications">
{%- for y in page.tags %}
{%- if y == theme-item.tag or y == theme-item.taga -%}
{% bibliography -f publications -q @*[tag={{y}} || taga={{y}}]]* %}
{% endif %}
{% endfor %}
</div></div></div>
 </div>
</div>
{% assign number_printed = number_printed | plus: 1 %}
{% if even_odd == 1 %}
</div>
{% endif %}

{% endif %}
{% endif %}
{% endfor %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if even_odd == 1 %}
</div>
{% endif %}

<p> &nbsp; </p>


[//]: # (**Watermarking schemes for attack detection:**)

### ... and more.
