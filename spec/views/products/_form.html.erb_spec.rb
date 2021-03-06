<%= simple_form_for @product do |f| %>  
  <%#= f.error_messages %>  
  <% if @product.errors.any? %>
    <div id="error_explanation">
      <h2><%= pluralize(@product.errors.count, "error") %> prohibited this product from being saved:</h2>

      <ul>
      <% @product.errors.full_messages.each do |msg| %>
        <li><%= msg %></li>
      <% end %>
      </ul>
    </div>
  <% end %>
  <%= f.input :name %>  
  <%= f.input :price %>  
  <%= f.input :released_on %>  
  <%= f.association :category, :include_blank => false %>  
  <%= f.input :rating, :collection => 1..5, :as => :radio %>  
  <%= f.input :discontinued %>  
  <%= f.button :submit %>  
<% end %>

