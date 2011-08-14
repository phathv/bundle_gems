<p id="notice"><%= notice %></p>

<p>
  <b>Name:</b>
  <%= @product.name %>
</p>

<p>
  <b>Price:</b>
  <%= @product.price %>
</p>

<p>
  <b>Released on:</b>
  <%= @product.released_on %>
</p>

<p>
  <b>Category:</b>
  <%= @product.category_id %>
</p>

<p>
  <b>Rating:</b>
  <%= @product.rating %>
</p>

<p>
  <b>Discontinued:</b>
  <%= @product.discontinued %>
</p>


<%= link_to 'Edit', edit_product_path(@product) %> |
<%= link_to 'view all', products_path %>
