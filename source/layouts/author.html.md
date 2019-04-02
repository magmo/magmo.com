---
title: #{author.name}
pageable: true
per_page: 10
---

<h1><%= author.name %></h1>

<ul>
  <% page_articles.each do |article| %>
    <li><%= link_to article.title, article %></li>
  <% end %>
</ul>