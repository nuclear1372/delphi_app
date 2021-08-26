class RubyMethod < ActiveHash::Base
  self.data = [
    {id: 1, first_priolity: '配列', second_priolity: '繰り返', therd_priolity: '1つずつ', suggestion: "eachの使用を提案。各要素に対してブロックを評価します。[1, 2, 3].each do |i| ~ end"},
    {id: 2, first_priolity: '配列', second_priolity: '含', therd_priolity: '中に', suggestion: 'include?の使用を提案。配列が指定したオブジェクトと == で等しい要素を持つ時に真を返します。a = [ "a", "b", "c" ]     a.include?("b") #=> true     a.include?("z") #=> false'},
    {id: 3, first_priolity: '配列', second_priolity: '共通', therd_priolity: '複', suggestion: '&を提案。[a, b. c] & [b, c]のように記述すると、両方の配列に含まれる要素からなる、新しい配列を返します。重複する要素は取り除かれます。[1, 1, 2, 3] & [3, 1, 4] #=> [1, 3]'},
    {id: 4, first_priolity: '配列', second_priolity: '加', therd_priolity: '足し', suggestion: '<<を提案。指定された obj を自身の末尾に破壊的に追加します。ary = [1]      ary << 2     ary# [1, 2]      また次のように連続して書くことができます。      ary << 2 << 3 << 4     ary # => [1, 2, 3, 4]'},
    {id: 5, first_priolity: '配列', second_priolity: '範囲', therd_priolity: '幅', suggestion: 'Rangeオブジェクトを提案。配列のインデックスにRangeオブジェクトで範囲を指定することで、範囲内にある要素からなる部分配列を返します。a = [ "a", "b", "c", "d", "e" ]     a[0..1] #=> ["a", "b"]     a[-2..-1] # => ["d", "e"]'},
    {id: 6, first_priolity: '配列', second_priolity: '換', therd_priolity: '変', suggestion: 'Rangeオブジェクトを提案。配列のインデックスにRangeオブジェクトで範囲を指定し、別の配列を代入すると、指定した範囲の値を代入された配列の内容に置き換えます。ary = [0, 1, 2, 3, 4, 5]     ary[0..2] = ["a", "b"]      ary # => ["a", "b", 3, 4, 5]'},
    {id: 7, first_priolity: '配列', second_priolity: '削除', therd_priolity: '全て', suggestion: 'clearメソッドを提案。配列の要素をすべて削除して空にします。ary = [1, 2]     ary.clear     p ary #=> []'},
    {id: 8, first_priolity: '配列', second_priolity: 'コピー', therd_priolity: '同じ', suggestion: 'dupメソッドを提案。配列の内容をコピーすることができます。ary = ["string"]     copy = ary.dup     p copy #=> ["string"]'},
    {id: 9, first_priolity: '配列', second_priolity: '数え', therd_priolity: '何個', suggestion: 'countメソッドを提案。引数を指定しない場合は、配列の要素数を返します。引数を一つ指定した場合は、レシーバの要素のうち引数に一致するものの個数をカウントして返します。ブロックを指定した場合は、ブロックを評価して真になった要素の個数をカウントして返します。ary = [1, 2, 4, 2.0]     ary.count # => 4     ary.count(2) # => 2     ary.count{|x|x%2==0} # => 3'},
    {id: 10, first_priolity: '配列', second_priolity: '取り除', therd_priolity: '消', suggestion: 'deleteメソッドを提案。引数に指定された値と== で等しい要素を自身からすべて取り除きます。等しい要素が見つかった場合は最後に見つかった要素を、そうでない場合には nil を返します。array = [1, 2, 3, 2, 1]     array.delete(2)     p array #=> [1, 3, 1]'},
    {id: 11, first_priolity: '配列', second_priolity: '検索', therd_priolity: '知', suggestion: 'indexメソッドを提案。条件に一致する最初の要素の位置を返します。位置を知りたいオブジェクトを指定します。指定されたオブジェクトと == で等しい最初の要素の位置を返します。等しい要素がひとつもなかった場合は nil を返します。[1, 0, 0, 1, 0].index(1) #=> 0    ブロックが与えられた場合には、各要素を引数として順にブロックを実行し、ブロックが真を返した最初の要素の位置を返します。一つも真にならなかった場合は nil を返します。[0, 1, 0, 1, 0].index {|v| v > 0} #=>'},
    {id: 12, first_priolity: '配列', second_priolity: '取得', therd_priolity: '値', suggestion: 'sliceメソッドを提案。指定された自身の要素を返します。[0, 1, 2].slice(1) #=> 1     [0, 1, 2].slice(2) #=> 2     [0, 1, 2].slice(10) #=> nil'},
    {id: 13, first_priolity: '配列', second_priolity: '合計', therd_priolity: '算', suggestion: 'sumメソッドを提案。要素の合計を返します。[1, 2, 3].sum #=> 6     [3, 5.5].sum #=> 8.5     [2.5, 3.0].sum(0.0) {|e| e * e }   #=> 15.25'},
    {id: 14, first_priolity: '配列', second_priolity: '整', therd_priolity: '重', suggestion: 'uniqメソッドを提案。配列から重複した要素を取り除いた新しい配列を返します。[1, 1, 1].uniq # => [1]     [1, 4, 1].uniq # => [1, 4]'}
  ]

  def self.reaction(user_message)
    self.data.each do |method|
      if (user_message[method[:first_priolity]] != nil) && (user_message[method[:second_priolity]] != nil) && (user_message[method[:therd_priolity]] != nil)
        return suggestion = method[:suggestion]
      elsif (user_message[method[:first_priolity]] != nil) && (user_message[method[:second_priolity]] != nil)
        return suggestion = method[:suggestion]
      elsif (user_message[method[:first_priolity]] != nil) && (user_message[method[:therd_priolity]] != nil)
        return suggestion = method[:suggestion]
      elsif (user_message[method[:second_priolity]] != nil) && (user_message[method[:therd_priolity]] != nil)
        return suggestion = method[:suggestion]
      end
    end
    return '該当するメソッドが見つかりませんでした。言い方を変えてみて頂けますか？'
  end

end