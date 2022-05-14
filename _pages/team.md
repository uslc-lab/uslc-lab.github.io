---
title: "Secure Learning and Control Lab - Team"
layout: gridlay
excerpt: "Secure Learning and Control Lab: Team members"
sitemap: false
permalink: /team/
---

# Group Members

 **We are  looking for new PhD students, Postdocs, and Master students to join the team** [(see openings)]({{ site.url }}{{ site.baseurl }}/vacancies) **!**


Jump to [staff](#Staff), [master and bachelor students](#master-and-bachelor-students), [alumni](#alumni), [administrative support](#administrative-support), [lab visitors](#lab-visitors).

[//]: # (Need to modify the code below to appear as - name, title, photo + short bio)

## Staff
{% for member in site.data.team_members %}

<div class="row">

<h3>{{ member.name }}</h3>
<h4 style="color:grey">{{ member.info }}</h4>

<div class="container">
  <div>
    <img src="{{ site.url }}{{ site.baseurl }}/images/teampic/{{ member.photo }}" class="img-responsive" width="15%" style="float: left" />
  </div>
  <ul style="overflow: hidden">
    <div style='margin-left:25%;'>
    <div style="font-size:1em"> {{ member.short_bio }} </div>
    </div>
  </ul>
</div>

<p style="clear:both;"></p>
<button class="button black" onclick="window.location.href='{{ member.website }}'" type="button">
  {{ member.name }}'s Personal Website</button>


</div>

{% endfor %}


<h3> Ginevra Castellano </h3>
<h4 style="color:grey"> Professor </h4>
<h4 style="color:grey"> Lab Director </h4>
<div class='container'>
    <div>
    <img src='../images/people-ginevra.jpg' class='iconDetails'>
    </div>  
    <div style='margin-left:25%;'>
    <div style="font-size:.8em"> Ginevra Castellano is a Professor at the Department of Information Technology, Uppsala University, where she leads the Social Robotics Lab. Her research interests are in the areas of social robotics and affective computing, and include social learning, personalized adaptive robots, multimodal behaviours and uncanny valley effect in robots and virtual agents. Over the last ten years she has been working on the development of computational abilities that allow robots to behave in a socially intelligent way in scenarios where robots provide social support to humans, for example as tutors in the classroom or as companions for children.</div>
    </div>
</div>


## Master and Bachelor Students
{% assign number_printed = 0 %}
{% for member in site.data.students %}

{% assign even_odd = number_printed | modulo: 2 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6 clearfix">
  <h4>{{ member.name }}</h4>
  <i>{{ member.info }} <!-- <br>email: <{{ member.email }}></i> -->
  <ul style="overflow: hidden">

  {% if member.number_educ == 1 %}
  <li> {{ member.education1 }} </li>
  {% endif %}

  {% if member.number_educ == 2 %}
  <li> {{ member.education1 }} </li>
  <li> {{ member.education2 }} </li>
  {% endif %}

  {% if member.number_educ == 3 %}
  <li> {{ member.education1 }} </li>
  <li> {{ member.education2 }} </li>
  <li> {{ member.education3 }} </li>
  {% endif %}

  {% if member.number_educ == 4 %}
  <li> {{ member.education1 }} </li>
  <li> {{ member.education2 }} </li>
  <li> {{ member.education3 }} </li>
  <li> {{ member.education4 }} </li>
  {% endif %}

  </ul>
</div>

{% assign number_printed = number_printed | plus: 1 %}

{% if even_odd == 1 %}
</div>
{% endif %}

{% endfor %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if even_odd == 1 %}
</div>
{% endif %}


## Alumni

{% assign number_printed = 0 %}
{% for member in site.data.alumni_members %}

{% assign even_odd = number_printed | modulo: 2 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6 clearfix">
  <img src="{{ site.url }}{{ site.baseurl }}/images/teampic/{{ member.photo }}" class="img-responsive" width="25%" style="float: left" />
  <h4>{{ member.name }}</h4>
  <i>{{ member.duration }} <br> Role: {{ member.info }}</i>
  <ul style="overflow: hidden">

  </ul>
</div>

{% assign number_printed = number_printed | plus: 1 %}

{% if even_odd == 1 %}
</div>
{% endif %}

{% endfor %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if even_odd == 1 %}
</div>
{% endif %}

## Former visitors, BSc/ MSc students
<div class="row">

<div class="col-sm-4 clearfix">
<h4>Visitors</h4>
{% for member in site.data.alumni_visitors %}
{{ member.name }}
{% endfor %}
</div>

<div class="col-sm-4 clearfix">
<h4>Master students</h4>
{% for member in site.data.alumni_msc %}
{{ member.name }}
{% endfor %}
</div>

<div class="col-sm-4 clearfix">
<h4>Bachelor Students</h4>
{% for member in site.data.alumni_bsc %}
{{ member.name }}
{% endfor %}
</div>

</div>
