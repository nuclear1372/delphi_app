class RubyMethod < ActiveHash::Base
  self.data = [
    {id: 1, first_priolity: '配列', second_priolity: '処理', therd_priolity: '1つずつ', suggestion: "eachの使用を提案。<br>各要素に対してブロックを評価します。", example: '[1, 2, 3].each do |i| <br> #行う処理 <br>end'},
    {id: 2, first_priolity: '配列', second_priolity: '含', therd_priolity: '中に', suggestion: 'include?の使用を提案。<br>配列が指定したオブジェクトと == で等しい要素を持つ時に真を返します。', example: 'a = [ "a", "b", "c" ]     <br>a.include?("b") #=> true     <br>a.include?("z") #=> false'},
    {id: 3, first_priolity: '配列', second_priolity: '共通', therd_priolity: '複', suggestion: '&を提案。<br>[a, b. c] & [b, c]のように記述すると、両方の配列に含まれる要素からなる、新しい配列を返します。<br>重複する要素は取り除かれます。', example: '[1, 1, 2, 3] & [3, 1, 4] <br>#=> [1, 3]'},
    {id: 4, first_priolity: '配列', second_priolity: '加', therd_priolity: '足し', suggestion: '<<を提案。<br>指定された obj を自身の末尾に破壊的に追加します。<br>また連続して書くことができます。', example: 'ary = [1]      <br>ary << 2     <br>ary # => [1, 2]  <br>ary = [1]      <br>ary << 2     <br>ary # => [1, 2]<br>ary << 2 << 3 << 4<br>ary # => [1, 2, 3, 4]'},
    {id: 5, first_priolity: '配列', second_priolity: '範囲', therd_priolity: '幅', suggestion: 'Rangeオブジェクトを提案。<br>配列のインデックスにRangeオブジェクトで範囲を指定することで、範囲内にある要素からなる部分配列を返します。', example: 'a = [ "a", "b", "c", "d", "e" ]     <br>a[0..1] #=> ["a", "b"]     <br>a[-2..-1] # => ["d", "e"]'},
    {id: 6, first_priolity: '配列', second_priolity: '換', therd_priolity: '変', suggestion: 'Rangeオブジェクトを提案。<br>配列のインデックスにRangeオブジェクトで範囲を指定し、別の配列を代入すると、指定した範囲の値を代入された配列の内容に置き換えます。', example: 'ary = [0, 1, 2, 3, 4, 5]     <br>ary[0..2] = ["a", "b"]      <br>ary # => ["a", "b", 3, 4, 5]'},
    {id: 7, first_priolity: '配列', second_priolity: '削除', therd_priolity: '全て', suggestion: 'clearメソッドを提案。<br>配列の要素をすべて削除して空にします。', example: 'ary = [1, 2]     <br>ary.clear      <br>ary # => []'},
    {id: 8, first_priolity: '配列', second_priolity: 'コピー', therd_priolity: '同じ', suggestion: 'dupメソッドを提案。<br>配列の内容をコピーすることができます。', example: 'ary = ["string"]     <br>copy = ary.dup      <br>copy #=> ["string"]'},
    {id: 9, first_priolity: '配列', second_priolity: '数え', therd_priolity: '何個', suggestion: 'countメソッドを提案。<br>引数を指定しない場合は、配列の要素数を返します。<br>引数を一つ指定した場合は、レシーバの要素のうち引数に一致するものの個数をカウントして返します。<br>ブロックを指定した場合は、ブロックを評価して真になった要素の個数をカウントして返します。', example: 'ary = [1, 2, 4, 2.0]     <br>ary.count # => 4     <br>ary.count(2) # => 2     <br>ary.count{|x|x%2==0} # => 3'},
    {id: 10, first_priolity: '配列', second_priolity: '取り除', therd_priolity: '消', suggestion: 'deleteメソッドを提案。<br>引数に指定された値と== で等しい要素を自身からすべて取り除きます。<br>等しい要素が見つかった場合は最後に見つかった要素を、そうでない場合には nil を返します。', example: 'array = [1, 2, 3, 2, 1]     <br>array.delete(2)      <br>array # => [1, 3, 1]'},
    {id: 11, first_priolity: '配列', second_priolity: '検索', therd_priolity: '探', suggestion: 'indexメソッドを提案。<br>条件に一致する最初の要素の位置を返します。<br>位置を知りたいオブジェクトを指定します。<br>指定されたオブジェクトと == で等しい最初の要素の位置を返します。<br>等しい要素がひとつもなかった場合は nil を返します。<br>ブロックが与えられた場合には、各要素を引数として順にブロックを実行し、ブロックが真を返した最初の要素の位置を返します。<br>一つも真にならなかった場合は nil を返します。', example: '[1, 0, 0, 1, 0].index(1) # => 0    <br>[0, 1, 0, 1, 0].index {|v| v > 0} # => 1'},
    {id: 12, first_priolity: '配列', second_priolity: '取得', therd_priolity: '値', suggestion: 'sliceメソッドを提案。<br>指定された自身の要素を返します。', example: '[0, 1, 2].slice(1) #=> 1     <br>[0, 1, 2].slice(2) #=> 2     <br>[0, 1, 2].slice(10) #=> nil'},
    {id: 13, first_priolity: '配列', second_priolity: '合計', therd_priolity: '知', suggestion: 'sumメソッドを提案。<br>要素の合計を返します。', example: '[1, 2, 3].sum #=> 6     <br>[3, 5.5].sum #=> 8.5     <br>[2.5, 3.0].sum(0.0) {|e| e * e }   #=> 15.25'},
    {id: 14, first_priolity: '配列', second_priolity: '整', therd_priolity: '重', suggestion: 'uniqメソッドを提案。<br>配列から重複した要素を取り除いた新しい配列を返します。', example: '[1, 1, 1].uniq # => [1]     <br>[1, 4, 1].uniq # => [1, 4]'}
  ]

  def self.reaction(user_message)
    self.data.each do |method|
      if (user_message[method[:first_priolity]] != nil) && (user_message[method[:second_priolity]] != nil) && (user_message[method[:therd_priolity]] != nil)
        suggestion = []
        suggestion << method[:suggestion] << method[:example]
        return suggestion
      elsif (user_message[method[:first_priolity]] != nil) && (user_message[method[:second_priolity]] != nil)
        suggestion = []
        suggestion << method[:suggestion] << method[:example]
        return suggestion
      elsif (user_message[method[:first_priolity]] != nil) && (user_message[method[:therd_priolity]] != nil)
        suggestion = []
        suggestion << method[:suggestion] << method[:example]
        return suggestion
      elsif (user_message[method[:second_priolity]] != nil) && (user_message[method[:therd_priolity]] != nil)
        suggestion = []
        suggestion << method[:suggestion] << method[:example]
        return suggestion
      end
    end
    error_message = []
    error_message << '該当するメソッドが見つかりませんでした。言い方を変えてみて頂けますか？'
    return error_message
  end

end