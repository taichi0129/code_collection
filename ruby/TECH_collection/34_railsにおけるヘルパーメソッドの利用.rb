# ①ヘルパーメソッドconverting_to_jpyを作成し,例えば「1000」という数値が引数で与えらたら「1,000円」といったように、「桁区切り」と「円」を追加するコードを実装してください。

# app/helpers/product_helper.rb
module ProductsHelper
  def converting_to_jpy(price)
    "#{price.to_s(:delimited, delimiter: ',')}円"
  end
end

# ②index画面で表示する金額に対して①で作成したメソッドを使用してください。
# index.html.erb
<p id="notice"><%= notice %></p>

<h1>Products</h1>

<table>
  <thead>
    <tr>
      <th>Name</th>
      <th>Price</th>
      <th colspan="3"></th>
    </tr>
  </thead>

  <tbody>
    <% @products.each do |product| %>
      <tr>
        <td><%= product.name %></td>
        <td><%= converting_to_jpy(product.price) %></td>
        <td><%= link_to 'Show', product %></td>
        <td><%= link_to 'Edit', edit_product_path(product) %></td>
        <td><%= link_to 'Destroy', product, method: :delete, data: { confirm: 'Are you sure?' } %></td>
      </tr>
    <% end %>
  </tbody>
</table>

<br>

<%= link_to 'New Product', new_product_path %>
