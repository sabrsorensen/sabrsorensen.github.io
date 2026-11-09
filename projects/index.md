---
title: Projects
layout: project
category: projects
---

{% assign projects = site.pages | where_exp: "p", "p.dir contains '/projects/'" | where_exp: "p", "p.dir != '/projects/'" | sort: "title" %}

<ul>
{% for project in projects %}
  <li>
    <a href="{{ project.url | relative_url }}">{{ project.title }}</a>: {{ project.project_desc }} <br>
    Tech Stack: {{ project.project_stack }}
  </li>
{% endfor %}
</ul>
