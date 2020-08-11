user_data = [
  {
    user: {
        profile: {
            name: 'George'
        }
    }
  },
  {
    user: {
        profile: {
          name: 'Alice'
        }
    }
  },
  {
    user: {
        profile: {
            name: 'Taro'
        }
    }
  }
]

# ユーザーの名前だけが出力されるようプログラミングせよ
# （例１）
user_data.each do |u|
  puts u[:user][:profile][:name]
end

# （例２）
user_data.each{ |u| puts u.dig(:user, :profile, :name) }

dig # => ネストしたオブジェクトを再帰的に参照して返す


