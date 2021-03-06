class RubyMethod < ActiveHash::Base
  self.data = [
    {id: 1, first_priolity: '配列', second_priolity: '繰り返', therd_priolity: '要素',forth_priolity: '取', fifth_priolity: '全て', sixth_priolity: '処理', seventh_priolity: '値', suggestion: "eachの使用を提案。<br>各要素に対してブロックを評価します。", example: '<pre><code class="ruby">[1, 2, 3].each do | i |
  #行う処理
end</code></pre>'},
    {id: 2, first_priolity: '配列', second_priolity: '含', therd_priolity: '特定', forth_priolity: 'あるか', fifth_priolity: '要素', sixth_priolity: '指定', seventh_priolity: '値', suggestion: 'include?の使用を提案。<br>配列が指定したオブジェクトと == で等しい要素を持つ時に真を返します。', example: '<pre><code class="ruby">a = [ "a", "b", "c" ]
a.include?("b")
#=> true
a.include?("z")
#=> false</code></pre>'},
    {id: 3, first_priolity: '配列', second_priolity: '共通', therd_priolity: '複', forth_priolity: '取', fifth_priolity: '要素', sixth_priolity: '値', seventh_priolity: '同じ', suggestion: '&メソッドを提案。<br>[a, b. c] & [b, c]のように記述すると、両方の配列に含まれる要素からなる、新しい配列を返します。<br>重複する要素は取り除かれます。', example: '<pre><code class="ruby">[1, 1, 2, 3] & [3, 1, 4]
#=> [1, 3]</code></pre>'},
    {id: 4, first_priolity: '配列', second_priolity: '加', therd_priolity: '入', forth_priolity: '要素', fifth_priolity: '新し', sixth_priolity: '値', seventh_priolity: '付け加え', suggestion: '<<メソッドを提案。<br>指定された obj を自身の末尾に破壊的に追加します。<br>また連続して書くことができます。', example: '<pre><code class="ruby">ary = [1]
ary << 2
ary # => [1, 2]
ary = [1]
ary << 2 ary # => [1, 2]
ary << 2 << 3 << 4
ary # => [1, 2, 3, 4]</code></pre>'},
    {id: 5, first_priolity: '配列', second_priolity: '範囲', therd_priolity: '指定', forth_priolity: '特定', fifth_priolity: '取', sixth_priolity: '要素', seventh_priolity: '値', suggestion: 'Rangeオブジェクトの使用を提案。<br>配列のインデックスにRangeオブジェクトで範囲を指定することで、範囲内にある要素からなる部分配列を返します。', example: '<pre><code class="ruby">a = [ "a", "b", "c", "d", "e" ]
a[0..1]
#=> ["a", "b"]
a[-2..-1]
# => ["d", "e"]</code></pre>'},
    {id: 6, first_priolity: '配列', second_priolity: '換', therd_priolity: '変', forth_priolity: '特定', fifth_priolity: '要素', sixth_priolity: '指定', seventh_priolity: '値', suggestion: 'Rangeオブジェクトの使用を提案。<br>配列のインデックスにRangeオブジェクトで範囲を指定し、別の配列を代入すると、指定した範囲の値を代入された配列の内容に置き換えます。', example: '<pre><code class="ruby">ary = [0, 1, 2, 3, 4, 5]
ary[0..2] = ["a", "b"]
ary
# => ["a", "b", 3, 4, 5]</code></pre>'},
    {id: 7, first_priolity: '配列', second_priolity: '削除', therd_priolity: '値', forth_priolity: '要素', fifth_priolity: '消', sixth_priolity: '全', seventh_priolity: '取り除',suggestion: 'clearメソッドを提案。<br>配列の要素をすべて削除して空にします。', example: '<pre><code class="ruby">ary = [1, 2]
ary.clear
ary
# => []</code></pre>'},
    {id: 8, first_priolity: '配列', second_priolity: 'コピー', therd_priolity: '生成', forth_priolity: '複製', fifth_priolity: '要素', sixth_priolity: '値', seventh_priolity: '同じ',suggestion: 'dupメソッドを提案。<br>配列の内容をコピーすることができます。', example: '<pre><code class="ruby">ary = ["string"]
copy = ary.dup
copy
#=> ["string"]</code></pre>'},
    {id: 9, first_priolity: '配列', second_priolity: '数え', therd_priolity: '知', forth_priolity: "要素", fifth_priolity: 'いくつ', sixth_priolity: '何個', seventh_priolity: '値',suggestion: 'countメソッドを提案。<br>引数を指定しない場合は、配列の要素数を返します。<br>引数を一つ指定した場合は、レシーバの要素のうち引数に一致するものの個数をカウントして返します。<br>ブロックを指定した場合は、ブロックを評価して真になった要素の個数をカウントして返します。', example: '<pre><code class="ruby">ary = [1, 2, 4, 2.0]
ary.count
# => 4
ary.count(2)
# => 2
ary.count{| x | x % 2 == 0}
# => 3</code></pre>'},
    {id: 10, first_priolity: '配列', second_priolity: '除', therd_priolity: '消', forth_priolity: '特定', fifth_priolity: '値', sixth_priolity: '指定', seventh_priolity: '要素',suggestion: 'deleteメソッドを提案。<br>引数に指定された値と== で等しい要素を自身からすべて取り除きます。<br>等しい要素が見つかった場合は最後に見つかった要素を、そうでない場合には nil を返します。', example: '<pre><code class="ruby">array = [1, 2, 3, 2, 1]
array.delete(2)
array
# => [1, 3, 1]</code></pre>'},
    {id: 11, first_priolity: '配列', second_priolity: '一致', therd_priolity: '探', forth_priolity: '要素', fifth_priolity: '特定', sixth_priolity: '指定', seventh_priolity: 'どこ',suggestion: 'indexメソッドを提案。<br>条件に一致する最初の要素の位置を返します。<br>位置を知りたいオブジェクトを指定します。<br>指定されたオブジェクトと == で等しい最初の要素の位置を返します。<br>等しい要素がひとつもなかった場合は nil を返します。<br>ブロックが与えられた場合には、各要素を引数として順にブロックを実行し、ブロックが真を返した最初の要素の位置を返します。<br>一つも真にならなかった場合は nil を返します。', example: '<pre><code class="ruby">[1, 0, 0, 1, 0].index(1)
# => 0
[0, 1, 0, 1, 0].index {| v | v > 0}
# => 1</code></pre>'},
    {id: 12, first_priolity: '配列', second_priolity: '取', therd_priolity: '値', forth_priolity: '指定', fifth_priolity: '要素', sixth_priolity: '特定', seventh_priolity: 'のみ',suggestion: 'sliceメソッドを提案。<br>指定された自身の要素を返します。', example: '<pre><code class="ruby">[0, 1, 2].slice(1)
#=> 1
[0, 1, 2].slice(2)
#=> 2
[0, 1, 2].slice(10)
#=> nil</code></pre>'},
    {id: 13, first_priolity: '配列', second_priolity: '合', therd_priolity: '値', forth_priolity: '計', fifth_priolity: '算', sixth_priolity: '要素', seventh_priolity: 'すべて',suggestion: 'sumメソッドを提案。<br>要素の合計を返します。', example: '<pre><code class="ruby">[1, 2, 3].sum
#=> 6
[3, 5.5].sum
#=> 8.5
[2.5, 3.0].sum(0.0) {| e | e * e }
#=> 15.25</code></pre>'},
    {id: 14, first_priolity: '配列', second_priolity: '他', therd_priolity: '重', forth_priolity: '同じ', fifth_priolity: '除', sixth_priolity: '複', seventh_priolity: '消',suggestion: 'uniqメソッドを提案。<br>配列から重複した要素を取り除いた新しい配列を返します。', example: '<pre><code class="ruby">[1, 1, 1].uniq
# => [1]
[1, 4, 1].uniq
# => [1, 4]</code></pre>'},
    {id: 15, first_priolity: 'ハッシュ', second_priolity: 'Key', therd_priolity: '取', forth_priolity: 'HASH', fifth_priolity: 'Value', sixth_priolity: 'キー', seventh_priolity: 'バリュー',suggestion: 'assocメソッドを提案。<br>ハッシュが引数をキーとして持つとき、見つかった要素のキーと値のペアを配列として返します。<br>キーの同一性判定には eql? メソッドではなく == メソッドを使います。<br>key が見つからなかった場合は、nil を返します。', example: '<pre><code class="ruby">h = {"colors" => ["red", "blue", "green"], "letters" => ["a", "b", "c" ]}
h.assoc("letters") 
#=> ["letters", ["a", "b", "c"]]
h.assoc("foo")
#=> nil</code></pre>'},
    {id: 16, first_priolity: 'ハッシュ', second_priolity: '除', therd_priolity: 'すべて', forth_priolity: '消', fifth_priolity: 'HASH', sixth_priolity: '要素', seventh_priolity: '値',suggestion: 'clearメソッドを提案。<br>ハッシュの中身を空にします。<br>空にした後のselfを返します。デフォルト値の設定はクリアされません。', example: '<pre><code class="ruby">h = Hash.new("default value")
h[:some] = "some"
h
#=> { :some => "some" }
h.clear
h
#=> {}
h.default
#=> "default value"</code></pre>'},
    {id: 17, first_priolity: 'ハッシュ', second_priolity: 'コピー', therd_priolity: '同じ', forth_priolity: 'HASH', fifth_priolity: '要素', sixth_priolity: '生成', seventh_priolity: '値',suggestion: 'dupメソッドを提案。<br>selfと同じ内容を持つ新しいハッシュを返します。<br>dup は内容だけをコピーします。', example: '<pre><code class="ruby">h1 = {"have" => "have a", "as" => "as a" }
h2 = h1.dup
h2["have"] = "has"
h2
#=> { "have" => "has", "as" => "as a" }
h1
#=> { "have" => "have a", "as" => "as a" }</code></pre>'},
    {id: 18, first_priolity: 'ハッシュ', second_priolity: '除', therd_priolity: '消', forth_priolity: 'HASH', fifth_priolity: '特定', sixth_priolity: '指定', seventh_priolity: '要素',suggestion: 'deleteメソッドを提案。<br>key に対応する要素を取り除きます。 <br>取り除くキーを指定し,取り除かれた要素の値を返します。 <br>キーに対応する要素が存在しない時には nil を返します  ', example: '<pre><code class="ruby">h = {:ab => "some" , :cd => "all"}
h.delete(:ab)
#=> "some"
h.delete(:ef)
#=> nil
h.delete(:ef){ | key | "#{key} Nothing" }
#=> "ef Nothing"
h 
#=> {:cd=>"all"}</code></pre>'},
    {id: 19, first_priolity: 'ハッシュ', second_priolity: '繰り返', therd_priolity: '取り出し', forth_priolity: 'HASH', fifth_priolity: 'すべて', sixth_priolity: '処理', seventh_priolity: '要素',suggestion: 'eachメソッドを提案。<br>ハッシュのキーと値を引数としてブロックを評価します。', example: '<pre><code class="ruby">{:a=>1, :b=>2}.each { | a | p a }
#=> [:a, 1]
#=> [:b, 2]
{:a=> 1, :b=> 2}.each { | k, v | p [ k, v ] }
#=> [:a, 1] 
#=> [:b, 2]</code></pre>'},
    {id: 20, first_priolity: 'ハッシュ', second_priolity: '以外', therd_priolity: '特定', forth_priolity: 'HASH', fifth_priolity: '除', sixth_priolity: '指定', seventh_priolity: '取',suggestion: 'exceptメソッドを提案。<br>引数で指定された以外のキーとその値だけを含む Hash を返します。<br>引数に指定されていて Hash に存在しないキーは無視されます。', example: '<pre><code class="ruby">h = { a: 100, b: 200, c: 300 }
h.except(:a)
# => {:b=>200, :c=>300}</code></pre>'},
    {id: 21, first_priolity: 'ハッシュ', second_priolity: '同じ', therd_priolity: '取', forth_priolity: 'HASH', fifth_priolity: '一致', sixth_priolity: 'キー', seventh_priolity: 'Key',suggestion: 'fetch_valuesメソッドを提案。<br>引数で指定されたキーに関連づけられた値の配列を返します。<br>該当するキーが登録されていない時には、ブロックが与えられていればそのブロックを評価した値を返します。<br>ブロックが与えられていない時は KeyError が発生します。<br>self にデフォルト値が設定されていても無視されます（挙動に変化がありません）。', example: '<pre><code class="ruby">h = { "cat" => "feline", "dog" => "canine", "cow" => "bovine" }
h.fetch_values("cow", "cat")
# => ["bovine", "feline"]
h.fetch_values("cow", "bird")
# raises KeyError</code></pre></code></pre>'},
    {id: 22, first_priolity: 'ハッシュ', second_priolity: '取', therd_priolity: '要素', forth_priolity: 'HASH', fifth_priolity: '条件', sixth_priolity: '当てはまる', seventh_priolity: '該当',suggestion: 'selectメソッドを提案。<br>key, value のペアについてブロックを評価し，真となるペアだけを含むハッシュを生成して返します。', example: '<pre><code class="ruby">h = { "a" => 100, "b" => 200, "c" => 300 }
h.select {| k, v | k > "a"}
#=> {"b" => 200, "c" => 300}
h.select {| k, v | v < 200}
#=> {"a" => 100}'},
    {id: 23, first_priolity: 'ハッシュ', second_priolity: 'キー', therd_priolity: '確', forth_priolity: 'HASH', fifth_priolity: '特定', sixth_priolity: '指定', seventh_priolity: 'Key',suggestion: 'key?メソッドを提案。<br>ハッシュが引数をキーとして持つ時真を返します。', example: '<pre><code class="ruby">{1 => "one"}.key?(1)
# => true
{1 => "one"}.key?(2)
# => false</code></pre>'},
    {id: 24, first_priolity: 'ハッシュ', second_priolity: 'バリュー', therd_priolity: '確', forth_priolity: 'HASH', fifth_priolity: '特定', sixth_priolity: '指定', seventh_priolity: 'Value',suggestion: 'value?メソッドを提案。<br>ハッシュが引数を値として持つ時真を返します。<br>値の一致判定は == で行われます。', example: '<pre><code class="ruby">{1 => "one"}.value?("one")
#=> true
{1 => "one"}.value?("two")
#=> false</code></pre>'},
    {id: 25, first_priolity: 'ハッシュ', second_priolity: 'すべて', therd_priolity: '取', forth_priolity: 'HASH', fifth_priolity: 'キー', sixth_priolity: 'Key', seventh_priolity: 'だけ',suggestion: 'keysメソッドを提案。<br>全キーの配列を返します。', example: '<pre><code class="ruby">h1 = { "a" => 100, 2 => ["some"], :c => "c" }
h1.keys #=> ["a", 2, :c]</code></pre>'},
    {id: 26, first_priolity: 'ハッシュ', second_priolity: '数', therd_priolity: '要素', forth_priolity: 'HASH', fifth_priolity: '確', sixth_priolity: '何個', seventh_priolity: '知',suggestion: 'lengthメソッドを提案。ハッシュの要素の数を返します。', example: '<pre><code class="ruby">h = { "d" => 100, "a" => 200, "v" => 300, "e" => 400 }
h.length
#=> 4'},
    {id: 27, first_priolity: 'ハッシュ', second_priolity: '結合', therd_priolity: '別の', forth_priolity: 'HASH', fifth_priolity: '複数', sixth_priolity: '統合', seventh_priolity: '同士',suggestion: 'mergeメソッドを提案。<br>ハッシュの内容を順番にマージ(統合)した結果を返します。', example: '<pre><code class="ruby">h1 = { "a" => 100,"b" => 200 }
h2 = { "b" => 246, "c" => 300 }
h3 = { "b" => 357,"d" => 400 }
h1.merge
#=> {"a"=>100, "b"=>200}
h1.merge(h2)
#=> {"a"=>100, "b"=>246, "c"=>300}
h1.merge(h2, h3) 
#=> {"a"=>100, "b"=>357, "c"=>300, "d"=>400}'},
    {id: 28, first_priolity: 'ハッシュ', second_priolity: '配列', therd_priolity: '変', forth_priolity: 'HASH', fifth_priolity: '換', sixth_priolity: '生成', seventh_priolity: '作',suggestion: 'to_aメソッドを提案。<br>キーと値からなる 2 要素の配列を並べた配列を生成して返します。', example: '<pre><code class="ruby">h1 = { "a" => 100, 2 => ["some"], :c => "c" }
h1.to_a
#=> [["a", 100], [2, ["some"]], [:c, "c"]]'},
    {id: 29, first_priolity: 'ハッシュ', second_priolity: 'バリュー', therd_priolity: 'Value', forth_priolity: 'HASH', fifth_priolity: 'すべて', sixth_priolity: '取', seventh_priolity: 'だけ',suggestion: 'valuesメソッドを提案。<br>ハッシュの全値の配列を返します。', example: '<pre><code class="ruby">h1 = { "a" => 100, 2 => ["some"], :c => "c" }
h1.values
#=> [ 100, ["some"], "c"]</code></pre>'},
    {id: 30, first_priolity: '文字', second_priolity: '指定', therd_priolity: '列', forth_priolity: '範囲', fifth_priolity: '部分', sixth_priolity: '特定', seventh_priolity: '切',suggestion: 'sliceメソッドを提案。Rangeオブジェクトで開始位置と終端を指定すると、部分文字列を新しく作って返します。開始位置が負の場合は文字列の末尾から数えます。', example: '<pre><code class="ruby">"abcd"[ 2 ..  3]
# => "cd"
"abcd"[-3 ..  2]
# => "bc"' },
    {id: 31, first_priolity: '文字', second_priolity: '変', therd_priolity: '換', forth_priolity: '別', fifth_priolity: '他', sixth_priolity: '部分', seventh_priolity: '指定',suggestion: 'self[substr] = valを提案。文字列中の substr に一致する最初の部分文字列を文字列 val で置き換えます。', example: '<pre><code class="ruby">buf = "string"
buf["trin"] = "!!"
buf
# => "s!!g"</code></pre>' },
    {id: 32, first_priolity: '文字', second_priolity: '変', therd_priolity: '換', forth_priolity: '特定', fifth_priolity: '当てはま', sixth_priolity: '全て', seventh_priolity: '表現',suggestion: 'self[regexp] = valを提案。正規表現 regexp にマッチした部分文字列全体を val で置き換えます。', example: '<pre><code class="ruby">buf = "string"
buf[/tr../] = "!!"
buf
# => "s!!g"</code></pre>' },
    {id: 33, first_priolity: '文字', second_priolity: '頭', therd_priolity: '大', forth_priolity: '変', fifth_priolity: '換', sixth_priolity: 'だけ', seventh_priolity: 'のみ',suggestion: 'capitalizeメソッドを提案。文字列先頭の文字を大文字に、残りを小文字に変更した文字列を返します。', example: '<pre><code class="ruby">"foobar--".capitalize
# => "Foobar--"
"fooBAR--".capitalize
# => "Foobar--"
"FOOBAR--".capitalize
# => "Foobar--"</code></pre>' },
    {id: 34, first_priolity: '文字', second_priolity: '比', therd_priolity: '一致', forth_priolity: '知', fifth_priolity: '特定', sixth_priolity: '複数', seventh_priolity: '確',suggestion: 'casecmp?メソッドを提案。<br>大文字小文字の違いを無視し文字列を比較します。<br>文字列が一致する場合には true を返し、一致しない場合には false を返します。', example: '<pre><code class="ruby">"abcdef".casecmp?("abcde")
#=> false
"aBcDeF".casecmp?("abcdef")
#=> true</code><pre>' },
    {id: 35, first_priolity: '文字', second_priolity: '数え', therd_priolity: 'あるか', forth_priolity: '特定', fifth_priolity: '何個', sixth_priolity: '指定', seventh_priolity: 'いくつ',suggestion: 'countメソッドを提案。<br>引数に指定された文字が対象の文字列にいくつあるか数えます。', example: '<pre><code class="ruby">"abcdefg".count("c")
# => 1
"123456789".count("2378")
# => 4</code></pre>'},
    {id: 36, first_priolity: '文字', second_priolity: '除', therd_priolity: '指定', forth_priolity: '特定', fifth_priolity: '消', sixth_priolity: 'だけ', seventh_priolity: 'のみ',suggestion: 'deleteメソッドを提案。<br>対象の文字列から引数に含まれる文字を取り除いた文字列を生成して返します', example: '<pre><code class="ruby">"123456789".delete("2378")
#=> "14569"
"123456789".delete("2-8", "^4-6")
#=> "14569"</code></pre>' },
    {id: 37, first_priolity: '文字', second_priolity: '小', therd_priolity: '変', forth_priolity: '換', fifth_priolity: 'すべて', sixth_priolity: '全て', seventh_priolity: 'アルファベット',suggestion: 'downcaseメソッドを提案。<br>全ての大文字を対応する小文字に置き換えた文字列を返します。<br>どの文字がどう置き換えられるかは、オプションの有無や文字列のエンコーディングに依存します。', example: '<pre><code class="ruby">"STRing?".downcase
# => "string?"</code></pre>' },
    {id: 38, first_priolity: '文字', second_priolity: '含まれて', therd_priolity: '確', forth_priolity: '知', fifth_priolity: '指定', sixth_priolity: '特定', seventh_priolity: '存在する',suggestion: 'include?メソッドを提案。<br>対象の文字列中に引数の部分文字列が含まれていれば真を返します。', example: '<pre><code class="ruby">"hello".include? "lo"
#=> true
"hello".include? "ol" 
#=> false
"hello".include? ?h 
#=> true</code></pre>' },
    {id: 39, first_priolity: '文字', second_priolity: '挿', therd_priolity: '入', forth_priolity: '中', fifth_priolity: '別', sixth_priolity: '他', seventh_priolity: '部分',suggestion: 'insertメソッドを提案。<br>第一引数に指定した位置の直前に第二引数に指定した文字列を挿入します。', example: '<pre><code class="ruby">str = "foobaz"
str.insert(3, "bar")
str # => "foobarbaz"</code></pre>' },
    {id: 40, first_priolity: '文字', second_priolity: '文字数', therd_priolity: '何文字', forth_priolity: '数え', fifth_priolity: 'いくつ', sixth_priolity: '知', seventh_priolity: '何個',suggestion: 'lengthメソッドを提案。<br>文字列の文字数を返します。', example: '<pre><code class="ruby">"test".length
# => 4
"テスト".length
# => 3</code></pre>' },
    {id: 41, first_priolity: '文字', second_priolity: '順番', therd_priolity: '逆', forth_priolity: '並', fifth_priolity: '反対', sixth_priolity: '後ろ', seventh_priolity: '反転',suggestion: 'reverseメソッドを提案。<br>文字列を文字単位で左右逆転した文字列を返します。', example: '<pre><code class="ruby">"foobar".reverse
# => "raboof"</code></pre>' },
    {id: 42, first_priolity: '数', second_priolity: '絶対', therd_priolity: '求', forth_priolity: '値', fifth_priolity: '知', sixth_priolity: '取', seventh_priolity: '算',suggestion: 'absメソッドを提案。<br>対象の数値の絶対値を返します。', example: '<pre><code class="ruby">-12345.abs
# => 12345
12345.abs
# => 12345
-1234567890987654321.abs
# => 1234567890987654321</code></pre>'},
    {id: 43, first_priolity: '数', second_priolity: '公約', therd_priolity: '大', forth_priolity: '割', fifth_priolity: '求', sixth_priolity: '値', seventh_priolity: '最',suggestion: 'gcdメソッドを提案。<br>対象の数値と引数に指定した整数の最大公約数を返します。', example: '<pre><code class="ruby">2.gcd(2)
# => 2
3.gcd(7) 
# => 1
3.gcd(-7)
# => 1</code></pre>'},
    {id: 44, first_priolity: '偶数', second_priolity: '奇数', therd_priolity: '確', forth_priolity: '知', fifth_priolity: 'かどうか', sixth_priolity: '値', seventh_priolity: 'なのか',suggestion: 'oddメソッドを提案。<br>対象の数値が奇数であれば真を返します。そうでない場合は偽を返します。', example: '<pre><code class="ruby">5.odd?
# => true
10.odd? 
# => false</code></pre>'},
    {id: 45, first_priolity: '数', second_priolity: '捨て', therd_priolity: '切り', forth_priolity: '丸め', fifth_priolity: '調整', sixth_priolity: '10の倍数', seventh_priolity: '端数',suggestion: 'roundメソッドを提案。<br>対象の数値ともっとも近い整数を返します。<br>第一引数:小数点以下の有効桁数を整数で指定。負の整数を指定した場合、小数点位置から左に少なくともn個の0が並びます。<br>第二引数:ちょうど半分の値の丸め方を指定', example: '<pre><code class="ruby">25.round(-1, half: :up)
# => 30
25.round(-1, half: :down)
# => 20
25.round(-1, half: :even)
# => 20</code></pre>'},
    {id: 46, first_priolity: '数', second_priolity: '繰り返', therd_priolity: '回', forth_priolity: '指定', fifth_priolity: '処理', sixth_priolity: '反復', seventh_priolity: '特定',suggestion: 'timesメソッドを提案。<br>指定した回数だけ繰り返します。 指定した数が正の整数でない場合は何もしません。', example: '<pre><code class="ruby">3.times { puts "Hello, World!" }
# Hello, World! と3行続いて表示される。
5.times { | n | print n }
# 01234 と表示される。</code><pre>'},
    {id: 47, first_priolity: '数', second_priolity: '小数', therd_priolity: '変', forth_priolity: '換', fifth_priolity: '扱', sixth_priolity: 'float', seventh_priolity: '処理',suggestion: 'to_fメソッドを提案。<br>対象を浮動小数点数(Float)に変換します。', example: '<pre><code class="ruby">1.to_f
# => 1.0</code></pre>'},
    {id: 48, first_priolity: '値', second_priolity: '部分', therd_priolity: '特定', forth_priolity: 'キャプチャ', fifth_priolity: '抜き', sixth_priolity: '指定', seventh_priolity: '取り出',suggestion: 'named_capturesメソッドを提案。<br>名前付きキャプチャをHashで返します。<br>Hashのキーは名前付きキャプチャの名前です。<br>Hashの値はキーの名前に対応した名前付きグループのうち最後にマッチした文字列です。', example: '<pre><code class="ruby">m = /(? a .)(? b .)/.match("01")
m.named_captures
# => {"a" => "0", "b" => "1"}</code><pre>'},
    {id: 49, first_priolity: '数', second_priolity: 'ランダム', therd_priolity: '乱', forth_priolity: '出力', fifth_priolity: '生成', sixth_priolity: '扱', seventh_priolity: '使用',suggestion: 'randメソッドを提案。<br>発生させる乱数値の範囲をRangeオブジェクトで指定することで、その範囲内での疑似乱数を発生させます。', example: '<pre><code class="ruby">rand(0..10)
# => 4
rand(Time.new(2012, 1, 1) ... Time.new(2013,1,1))
# => 2012-02-25 03:11:42 +0900</code></pre>'},
    {id: 50, first_priolity: '探', second_priolity: '条件', therd_priolity: 'どこに', forth_priolity: '特定', fifth_priolity: '配列', sixth_priolity: '見つけ', seventh_priolity: '当てはまる',suggestion: 'bsearchメソッドを提案。<br>ブロックの評価結果で範囲内の各要素の大小判定を行い、条件を満たす値を二分探索で検索します。<br>該当する値のインデックスを返します。<br>要素が見つからない場合はnilを返します。', example: '<pre><code class="ruby">ary = [0, 4, 7, 10, 12]
(0...ary.size).bsearch { | i | ary[ i ] >= 4 } 
# => 1
(0...ary.size).bsearch { | i | ary[ i ] >= 6 }
# => 2
(0...ary.size).bsearch { | i | ary[ i ] >= 8 }
# => 3
(0...ary.size).bsearch { | i | ary[ i ] >= 100 }
# => nil</code></pre>'},
    {id: 51, first_priolity: '範囲', second_priolity: '繰り返', therd_priolity: '要素', forth_priolity: '指定', fifth_priolity: '限定', sixth_priolity: '処理', seventh_priolity: '特定',suggestion: 'eachメソッドを提案。<br>範囲内の要素に対して繰り返します。', example: '<pre><code class="ruby">(10..15).each {| n | print n, ' ' }
# prints: 10 11 12 13 14 15'},
    {id: 52, first_priolity: '大', second_priolity: '小', therd_priolity: '値', forth_priolity: '取', fifth_priolity: '要素', sixth_priolity: '知', seventh_priolity: '最',suggestion: 'minmaxメソッドを提案。<br>範囲内の要素のうち、最小の要素と最大の要素を要素とするサイズ2の配列を返します。<br>一つ目の形式では、全要素が互いに <=> メソッドで比較できることを仮定しています。<br>二つ目の形式では、要素同士の比較をブロックを用いて行います。<br>ブロックの値は、a > b のとき正、a == bのとき0、a < bのとき負の整数を期待しています。', example: '<pre><code class="ruby">(1..3).minmax
# => [1, 3]
h = { 1 => "C", 2 => "Go", 3 => "Ruby" }
(1..3).minmax { | a, b | h[a].length <=> h[b].length }
# => [1, 3]</code></pre>'},
    {id: 53, first_priolity: '要素', second_priolity: '明', therd_priolity: 'グループ', forth_priolity: '分', fifth_priolity: '結果', sixth_priolity: '評価', seventh_priolity: '配列',suggestion: 'chunkメソッドを提案。<br>要素を前から順にブロックで評価し、その結果によって要素をチャンクに分けた(グループ化した)要素を持つEnumeratorを返します。', example: '<pre><code class="ruby">[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5].chunk {| n | n.even?}.each {| even, ary |
p [even, ary]} 
# => [false, [3, 1]]
# [true, [4]]
# [false, [1, 5, 9]]
# [true, [2, 6]]
# [false, [5, 3, 5]]</code></pre>'},
    {id: 54, first_priolity: '要素', second_priolity: 'いくつか', therd_priolity: '結合', forth_priolity: '複数', fifth_priolity: '配列', sixth_priolity: '連結', seventh_priolity: '統合',suggestion: 'flat_mapメソッドを提案。<br>各要素をブロックに渡し、その返り値を連結した配列を返します。', example: '<pre><code class="ruby">[[1,2], [3,4]].flat_map{| i | i.map{| j | j * 2}}
# => [2,4,6,8]</code></pre>'},
    {id: 55, first_priolity: '納', second_priolity: '要素', therd_priolity: '条件', forth_priolity: '当てはまる', fifth_priolity: '指定', sixth_priolity: '配列', seventh_priolity: '特定',suggestion: 'filter_mapメソッドを提案。<br>各要素に対してブロックを評価した値のうち、真であった値の配列を返します。<br>ブロックを省略した場合は、各要素に対してブロックを評価した値のうち、真であった値の配列を返すようなEnumeratorを返します。', example: '<pre><code class="ruby">(1..10).filter_map { | i | i * 2 if i.even? }
#=> [4, 8, 12, 16, 20]</code></pre>'},
    {id: 56, first_priolity: '要素', second_priolity: '納', therd_priolity: '配列', forth_priolity: '当てはまる', fifth_priolity: '同じ', sixth_priolity: '一致', seventh_priolity: '指定',suggestion: 'grepメソッドを提案。<br>引数 === 値が成立する要素を全て含んだ配列を返します。<br>ブロックとともに呼び出された時には条件の成立した要素に対してそれぞれブロックを評価し、その結果の配列を返します。<br>マッチする要素がひとつもなかった場合は空の配列を返します。', example: '<pre><code class="ruby">["aa", "bb", "cc", "dd", "ee"].grep(/[bc]/)
# => ["bb", "cc"]'},
    {id: 57, first_priolity: '要素', second_priolity: '結果', therd_priolity: '管理', forth_priolity: 'ハッシュ', fifth_priolity: 'HASH', sixth_priolity: '納', seventh_priolity: 'グループ',suggestion: 'group_byメソッドを提案。<br>ブロックを評価した結果をキー、対応する要素の配列を値とするハッシュを返します。', example: '<pre><code class="ruby">(1..6).group_by { | i | i % 3 }
#=> {0=>[3, 6], 1=>[1, 4], 2=>[2, 5]}</code></pre>'},
    {id: 58, first_priolity: '要素', second_priolity: '結果', therd_priolity: '評価', forth_priolity: '分', fifth_priolity: '条件', sixth_priolity: '特定', seventh_priolity: '当てはまる',suggestion: 'partitionメソッドを提案。<br>各要素を、ブロックの条件を満たす要素と満たさない要素に分割します。<br>各要素に対してブロックを評価して、その値が真であった要素の配列と、偽であった要素の配列の2つを配列に入れて返します。', example: '<pre><code class="ruby">[10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0].partition {|i| i % 3 == 0 }
# => [[9, 6, 3, 0], [10, 8, 7, 5, 4, 2, 1]]</code></pre>'},
    {id: 59, first_priolity: '確', second_priolity: '要素', therd_priolity: '条件', forth_priolity: '当てはまらない', fifth_priolity: '当てはまる', sixth_priolity: 'すべて', seventh_priolity: '知',suggestion: 'none?メソッドを提案。<br>ブロックを指定しない場合は、Enumerableオブジェクトのすべての要素が偽であれば真を返します。<br>ブロックを指定した場合はEnumerableオブジェクトのすべての要素をブロックで評価した結果が、すべて偽であれば真を返します。', example: '<pre><code class="ruby">require "set"
Set["ant", "bear", "cat"].none? {|word| word.length == 5} # => true
Set["ant", "bear", "cat"].none? {|word| word.length >= 4} # => false
Set["ant", "bear", "cat"].none?(/d/) # => true
Set[nil,false].none? # => true
Set[nil, false, true].none? # => false</code></pre>'}
  ]

  def self.reaction(user_message)
    suggestions = []
    error_message = ['情報が不足しています。言い方を変えてみて頂けますか？']
    
    self.data.each do |method|
      matching_list = method.fetch_values(:first_priolity, :second_priolity, :therd_priolity, :forth_priolity, :fifth_priolity, :sixth_priolity, :seventh_priolity)
      matching_score = 0
      matching_list.each do |value|
        if user_message[value]
          matching_score += 1
        end
      end
      if matching_score >= 3
        suggestion_candidate = []
        suggestion_candidate << matching_score << method[:suggestion] << method[:example]
        suggestions << suggestion_candidate
      end
    end
    if suggestions.empty?
      return error_message
    else
      top_score = nil
      second_score = nil
      therd_score = nil
      suggestions.each do |suggest|
        if suggest[0] >= 5
          top_score = suggest
        elsif suggest[0] == 4
          second_score = suggest
        elsif suggest[0] == 3
          therd_score = suggest
        end
      end
      if top_score != nil
        return top_score
      elsif second_score != nil
        return second_score
      elsif therd_score != nil
        return therd_score
      end
    end
    
    
  end

end
