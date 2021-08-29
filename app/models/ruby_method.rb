class RubyMethod < ActiveHash::Base
  self.data = [
    {id: 1, first_priolity: '配列', second_priolity: '繰り返', therd_priolity: '1つずつ',forth_priolity: '取り出', fifth_priolity: '全て', suggestion: "eachの使用を提案。<br>各要素に対してブロックを評価します。", example: '[1, 2, 3].each do |i| <br> #行う処理 <br>end'},
    {id: 2, first_priolity: '配列', second_priolity: '含', therd_priolity: '中に', forth_priolity: '確認', fifth_priolity: '知', suggestion: 'include?の使用を提案。<br>配列が指定したオブジェクトと == で等しい要素を持つ時に真を返します。', example: 'a = [ "a", "b", "c" ]     <br>a.include?("b") #=> true     <br>a.include?("z") #=> false'},
    {id: 3, first_priolity: '配列', second_priolity: '共通', therd_priolity: '複', forth_priolity: '取得', fifth_priolity: '同じ', suggestion: '&を提案。<br>[a, b. c] & [b, c]のように記述すると、両方の配列に含まれる要素からなる、新しい配列を返します。<br>重複する要素は取り除かれます。', example: '[1, 1, 2, 3] & [3, 1, 4] <br>#=> [1, 3]'},
    {id: 4, first_priolity: '配列', second_priolity: '加', therd_priolity: '足し', forth_priolity: '要素', fifth_priolity: '新し', suggestion: '<<を提案。<br>指定された obj を自身の末尾に破壊的に追加します。<br>また連続して書くことができます。', example: 'ary = [1]      <br>ary << 2     <br>ary # => [1, 2]  <br>ary = [1]      <br>ary << 2     <br>ary # => [1, 2]<br>ary << 2 << 3 << 4<br>ary # => [1, 2, 3, 4]'},
    {id: 5, first_priolity: '配列', second_priolity: '範囲', therd_priolity: '幅', forth_priolity: '特定', fifth_priolity: '取得', suggestion: 'Rangeオブジェクトを提案。<br>配列のインデックスにRangeオブジェクトで範囲を指定することで、範囲内にある要素からなる部分配列を返します。', example: 'a = [ "a", "b", "c", "d", "e" ]     <br>a[0..1] #=> ["a", "b"]     <br>a[-2..-1] # => ["d", "e"]'},
    {id: 6, first_priolity: '配列', second_priolity: '換', therd_priolity: '変', forth_priolity: '特定', fifth_priolity: '要素', suggestion: 'Rangeオブジェクトを提案。<br>配列のインデックスにRangeオブジェクトで範囲を指定し、別の配列を代入すると、指定した範囲の値を代入された配列の内容に置き換えます。', example: 'ary = [0, 1, 2, 3, 4, 5]     <br>ary[0..2] = ["a", "b"]      <br>ary # => ["a", "b", 3, 4, 5]'},
    {id: 7, first_priolity: '配列', second_priolity: '削除', therd_priolity: '全て', forth_priolity: '要素', fifth_priolity: '消', suggestion: 'clearメソッドを提案。<br>配列の要素をすべて削除して空にします。', example: 'ary = [1, 2]     <br>ary.clear      <br>ary # => []'},
    {id: 8, first_priolity: '配列', second_priolity: 'コピー', therd_priolity: '同じ', forth_priolity: '複製', fifth_priolity: '要素', suggestion: 'dupメソッドを提案。<br>配列の内容をコピーすることができます。', example: 'ary = ["string"]     <br>copy = ary.dup      <br>copy #=> ["string"]'},
    {id: 9, first_priolity: '配列', second_priolity: '数え', therd_priolity: '知', forth_priolity: '要素', fifth_priolity: '確認', suggestion: 'countメソッドを提案。<br>引数を指定しない場合は、配列の要素数を返します。<br>引数を一つ指定した場合は、レシーバの要素のうち引数に一致するものの個数をカウントして返します。<br>ブロックを指定した場合は、ブロックを評価して真になった要素の個数をカウントして返します。', example: 'ary = [1, 2, 4, 2.0]     <br>ary.count # => 4     <br>ary.count(2) # => 2     <br>ary.count{|x|x%2==0} # => 3'},
    {id: 10, first_priolity: '配列', second_priolity: '削除', therd_priolity: '消', forth_priolity: '特定', fifth_priolity: '値', suggestion: 'deleteメソッドを提案。<br>引数に指定された値と== で等しい要素を自身からすべて取り除きます。<br>等しい要素が見つかった場合は最後に見つかった要素を、そうでない場合には nil を返します。', example: 'array = [1, 2, 3, 2, 1]     <br>array.delete(2)      <br>array # => [1, 3, 1]'},
    {id: 11, first_priolity: '配列', second_priolity: '検索', therd_priolity: '探', forth_priolity: '要素', fifth_priolity: '特定', suggestion: 'indexメソッドを提案。<br>条件に一致する最初の要素の位置を返します。<br>位置を知りたいオブジェクトを指定します。<br>指定されたオブジェクトと == で等しい最初の要素の位置を返します。<br>等しい要素がひとつもなかった場合は nil を返します。<br>ブロックが与えられた場合には、各要素を引数として順にブロックを実行し、ブロックが真を返した最初の要素の位置を返します。<br>一つも真にならなかった場合は nil を返します。', example: '[1, 0, 0, 1, 0].index(1) # => 0    <br>[0, 1, 0, 1, 0].index {|v| v > 0} # => 1'},
    {id: 12, first_priolity: '配列', second_priolity: '取得', therd_priolity: '値', forth_priolity: '指定', fifth_priolity: '要素', suggestion: 'sliceメソッドを提案。<br>指定された自身の要素を返します。', example: '[0, 1, 2].slice(1) #=> 1     <br>[0, 1, 2].slice(2) #=> 2     <br>[0, 1, 2].slice(10) #=> nil'},
    {id: 13, first_priolity: '配列', second_priolity: '合計', therd_priolity: '知', forth_priolity: '計算', fifth_priolity: '集計', suggestion: 'sumメソッドを提案。<br>要素の合計を返します。', example: '[1, 2, 3].sum #=> 6     <br>[3, 5.5].sum #=> 8.5     <br>[2.5, 3.0].sum(0.0) {|e| e * e }   #=> 15.25'},
    {id: 14, first_priolity: '配列', second_priolity: '整', therd_priolity: '重', forth_priolity: '同じ', fifth_priolity: '取り除', suggestion: 'uniqメソッドを提案。<br>配列から重複した要素を取り除いた新しい配列を返します。', example: '[1, 1, 1].uniq # => [1]     <br>[1, 4, 1].uniq # => [1, 4]'},
    {id: 15, first_priolity: 'ハッシュ', second_priolity: '値', therd_priolity: '取得', forth_priolity: 'HASH', fifth_priolity: '要素', suggestion: 'assocメソッドを提案。<br>ハッシュが引数をキーとして持つとき、見つかった要素のキーと値のペアを配列として返します。<br>キーの同一性判定には eql? メソッドではなく == メソッドを使います。<br>key が見つからなかった場合は、nil を返します。', example: 'h = {<br>"colors"  => ["red", "blue", "green"],<br>"letters" => ["a", "b", "c" ]} <br>h.assoc("letters")  #=> ["letters", ["a", "b", "c"]] <br>h.assoc("foo") #=> nil'},
    {id: 16, first_priolity: 'ハッシュ', second_priolity: '削除', therd_priolity: '全て', forth_priolity: '消す', fifth_priolity: 'HASH', suggestion: 'clearメソッドの使用を提案。<br>ハッシュの中身を空にします。<br>空にした後のselfを返します。デフォルト値の設定はクリアされません。', example: 'h = Hash.new("default value") <br>h[:some] = "some" <br>h #=> {:some=>"some"} <br>h.clear <br>h #=> {} <br>h.default #=> "default value"'},
    {id: 17, first_priolity: 'ハッシュ', second_priolity: 'コピー', therd_priolity: '同じ', forth_priolity: 'HASH', fifth_priolity: '複製', suggestion: 'dupメソッドを提案。<br>selfと同じ内容を持つ新しいハッシュを返します。<br>dup は内容だけをコピーします。', example: 'h1 = {<br>"have" => "have a",<br>"as" => "as a" } <br>h2 = h1.dup <br>h2["have"] = "has" <br>h2 #=> {"have"=>"has", <br>"as"=>"as a"} <br>h1 #=> {"have"=>"have a",<br> "as"=>"as a"}'},
    {id: 18, first_priolity: 'ハッシュ', second_priolity: '削除', therd_priolity: '値', forth_priolity: 'HASH', fifth_priolity: '特定', suggestion: 'deleteメソッドを提案。<br>key に対応する要素を取り除きます。 <br>取り除くキーを指定し,取り除かれた要素の値を返します。 <br>キーに対応する要素が存在しない時には nil を返します  ', example: 'h = {<br>:ab => "some" , <br>:cd => "all"} <br>h.delete(:ab) #=> "some" <br>h.delete(:ef) #=> nil <br> h.delete(:ef){<br>|key|"#{key} Nothing"<br>} #=> "ef Nothing" <br>h #=> {:cd=>"all"}'},
    {id: 19, first_priolity: 'ハッシュ', second_priolity: '繰り返', therd_priolity: '取り出', forth_priolity: 'HASH', fifth_priolity: '全て', suggestion: 'eachメソッドを提案。<br>ハッシュのキーと値を引数としてブロックを評価します。', example: '{:a=>1, :b=>2}.each {|a| p a} <br>#=> [:a, 1] <br>#   [:b, 2] <br>{:a=>1, :b=>2}.each {|k, v| p [k, v]} <br>#=> [:a, 1] <br>#   [:b, 2]'},
    {id: 20, first_priolity: 'ハッシュ', second_priolity: '以外', therd_priolity: '特定', forth_priolity: 'HASH', fifth_priolity: '要素', suggestion: 'exceptメソッドを提案。<br>引数で指定された以外のキーとその値だけを含む Hash を返します。<br>引数に指定されていて Hash に存在しないキーは無視されます。', example: 'h = { <br>a: 100, b: 200, c: 300 } <br>h.except(:a) <br># => {:b=>200, :c=>300}'},
    {id: 21, first_priolity: 'ハッシュ', second_priolity: 'バリュー', therd_priolity: '取得', forth_priolity: 'HASH', fifth_priolity: '特定', suggestion: 'fetch_valuesメソッドを提案。<br>引数で指定されたキーに関連づけられた値の配列を返します。<br>該当するキーが登録されていない時には、ブロックが与えられていればそのブロックを評価した値を返します。<br>ブロックが与えられていない時は KeyError が発生します。<br>self にデフォルト値が設定されていても無視されます（挙動に変化がありません）。', example: 'h = { <br>"cat" => "feline", <br>"dog" => "canine", <br>"cow" => "bovine" } <br>h.fetch_values("cow", "cat") <br># => ["bovine", "feline"] <br>h.fetch_values("cow", "bird") <br># raises KeyError'},
    {id: 22, first_priolity: 'ハッシュ', second_priolity: '検索', therd_priolity: '調べ', forth_priolity: 'HASH', fifth_priolity: '確か', suggestion: 'selectメソッドを提案。<br>key, value のペアについてブロックを評価し，真となるペアだけを含むハッシュを生成して返します。', example: 'h = {<br> "a" => 100,<br> "b" => 200,<br> "c" => 300 } <br>h.select {|k,v| k > "a"}  <br>#=> {"b" => 200, "c" => 300} <br>h.select {|k,v| v < 200}  <br>#=> {"a" => 100}'},
    {id: 23, first_priolity: 'ハッシュ', second_priolity: 'キー', therd_priolity: '確か', forth_priolity: 'HASH', fifth_priolity: '特定', suggestion: 'key?メソッドを提案。<br>ハッシュが引数をキーとして持つ時真を返します。', example: '{1 => "one"}.key?(1) <br># => true <br>{1 => "one"}.key?(2) <br># => false'},
    {id: 24, first_priolity: 'ハッシュ', second_priolity: 'バリュー', therd_priolity: '確か', forth_priolity: 'HASH', fifth_priolity: '調べ', suggestion: 'value?メソッドを提案。<br>ハッシュが引数を値として持つ時真を返します。<br>値の一致判定は == で行われます。', example: '{1 => "one"}.value?("one") <br>#=> true <br>{1 => "one"}.value?("two") <br>#=> false'},
    {id: 25, first_priolity: 'ハッシュ', second_priolity: 'すべて', therd_priolity: '取得', forth_priolity: 'HASH', fifth_priolity: 'キー', suggestion: 'keysメソッドを提案。<br>全キーの配列を返します。', example: 'h1 = { <br>"a" => 100, <br>2 => ["some"], <br>:c => "c" }<br>h1.keys #=> ["a", 2, :c]'},
    {id: 26, first_priolity: 'ハッシュ', second_priolity: '数', therd_priolity: '要素', forth_priolity: 'HASH', fifth_priolity: '取得', suggestion: 'lengthメソッドを提案。ハッシュの要素の数を返します。', example: 'h = { <br>"d" => 100,<br> "a" => 200,<br> "v" => 300,<br> "e" => 400 } <br>h.length #=> 4'},
    {id: 27, first_priolity: 'ハッシュ', second_priolity: '結合', therd_priolity: '別の', forth_priolity: 'HASH', fifth_priolity: '他', suggestion: 'mergeメソッドを提案。<br>ハッシュの内容を順番にマージ(統合)した結果を返します。', example: 'h1 = { "a" => 100,"b" => 200 } <br>h2 = { "b" => 246, "c" => 300 } <br>h3 = { "b" => 357,"d" => 400 } <br>h1.merge #=> {"a"=>100, "b"=>200} <br>h1.merge(h2) <br>#=> {"a"=>100, "b"=>246, "c"=>300} <br>h1.merge(h2, h3)  <br>#=> {"a"=>100, "b"=>357, "c"=>300, "d"=>400}'},
    {id: 28, first_priolity: 'ハッシュ', second_priolity: '配列', therd_priolity: '変', forth_priolity: 'HASH', fifth_priolity: '換', suggestion: 'to_aメソッドを提案。<br>キーと値からなる 2 要素の配列を並べた配列を生成して返します。', example: 'h1 = { <br>"a" => 100,<br> 2 => ["some"],<br> :c => "c" } <br>h1.to_a <br>#=> [["a", 100],<br> [2, ["some"]],<br> [:c, "c"]]'},
    {id: 29, first_priolity: 'ハッシュ', second_priolity: 'バリュー', therd_priolity: 'Value', forth_priolity: 'HASH', fifth_priolity: '全て', suggestion: 'valuesメソッドを提案。<br>ハッシュの全値の配列を返します。', example: 'h1 = { <br>"a" => 100,<br> 2 => ["some"],<br> :c => "c" } <br>h1.values <br>#=> [100, ["some"], "c"]'}
  ]

  def self.reaction(user_message)
    suggestions = []
    suggestion_candidate = []
    error_message = []
    error_message << '該当するメソッドが見つかりませんでした。言い方を変えてみて頂けますか？'
    
    self.data.each do |method|
      matching_list = method.fetch_values(:first_priolity, :second_priolity, :therd_priolity, :forth_priolity, :fifth_priolity)
      matching_score = 0
      matching_list.each do |value|
        if user_message[value]
          matching_score += 1
        end
      end
      if matching_score >= 3
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
        if suggest[0] == 5
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