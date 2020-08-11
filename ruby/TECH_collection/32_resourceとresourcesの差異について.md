## routes.rbにおけるresourceとresourcesの違い

### resources
- Railsの基本となるコントローラーの7つのアクション名に対してのルーティングを自動で生成してくれるメソッド

### resource
- 7つのアクション名に対するルーティンを作成するのは一緒だが、idつきのパスが生成されない。  
show,editアクションの実行に、idが必要ない場合に有効  
- indexアクション用のルーティングが生成されない。  

(例)  
```:routes.rb
resource :users
```

```ターミナル
# 生成されるルーティング
new_users GET    /users/new(.:format)  users#new
edit_users GET    /users/edit(.:format) users#edit
     users GET    /users(.:format)      users#show
           PATCH  /users(.:format)      users#update
           PUT    /users(.:format)      users#update
           DELETE /users(.:format)      users#destroy
           POST   /users(.:format)      users#create
```

