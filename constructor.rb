s = "foobar"  # 文字列のコンストラクタ
s.class

s = String.new("foobar")
s.class
s == "foobar"

# 配列でも文字列と同様にインスタンスを生成可能
a = Array.new([1, 3, 2])

# しかしハッシュの場合は少し異なる。Array.newは配列の初期値を引数にとるが、Hash.newはデフォルト値を引数にとる。
h = Hash.new
h[:foo]                 # 存在しないキーの値にアクセスする
h = Hash.new(0)         # 存在しないキーのデフォルト値をnilから0にする。
h[:foo]

class Word < String           # WordクラスはStringクラスを継承する
# 文字列が回文であればtrueを返す。
  def palindrome?(string)
    self == self.reverse      # selfは文字列自信を表す
  end
end
w = Word.new    # Wordオブジェクトを作成
w.palindrome?("foobar")
w.palindrome?("level")

class String
  def palindrome?
    self = self.reverse
  end
end
"deified".palindrome?

"".blank?
"         ".empty?
"         ".blank?
nil.blank?