def is_number?(str)
    true if Float(str) rescue false
end

loop do # 無限ループ
    puts "計算したい式を入力してください（例: 3 + 5）"
    puts "または 'exit' と入力して終了"
  
    # ユーザー入力を取得
    # chomp off"（かじり取る) : 改行を削除
    input = gets.chomp
    break if input.downcase == "exit"

    tokens = input.split
    if tokens.size != 3
        puts "無効な入力です。例: 3 + 5 のように入力してください。"
        next
    end

    num1, operator, num2 = tokens
    if is_number?(num1) && is_number?(num2) && ["+", "-", "*", "/"].include?(operator)
        num1 = num1.to_f
        num2 = num2.to_f
  
        # 演算処理
        result = case operator # 演算記号
            when "+" then num1 + num2
            when "-" then num1 - num2
            when "*" then num1 * num2
            when "/" 
                # zero?:0か ?:if-else を1行で書くため
                num2.zero? ? "ゼロ除算エラー" : num1 / num2
            else
                "無効な演算子"
            end
  
        puts "計算結果: #{result}"
    else
        puts "無効な入力です。"
    end
end