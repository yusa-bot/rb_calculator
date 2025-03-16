# rb_calculator
Ribyで作成した電卓です。
コマンドラインで式を入力すると計算結果を返します。

可能演算子：
+, 
-, 
*, 
/, 

## 実装
split を使用して数値と演算子を分離
to_f を使って数値へ変換
is_number? メソッドで入力チェック
ループ (loop do) を使い、何度でも計算可能
next で無効な入力をスキップ
rescue を使って安全なエラーハンドリング

## 実行
clone
```bash
git clone https://github.com/yusa-bot/rb_calculator.git
cd rb_calculator
```

実行
```bash
ruby calculator.rb 
```

ex.)
数と演算子は半角スペースで区切ってください。
2つの数の計算のみ可能です。

```bash
計算したい式を入力してください（例: 3 + 5）
または 'exit' と入力して終了
3 + 5
計算結果: 8.0

計算したい式を入力してください（例: 3 + 5）
または 'exit' と入力して終了
3 / 2
計算結果: 1.5

計算したい式を入力してください（例: 3 + 5）
または 'exit' と入力して終了
2134 + 234231         
計算結果: 236365.0

計算したい式を入力してください（例: 3 + 5）
または 'exit' と入力して終了
exit
```

## ファイル構成
```bash
calculator/
  │── calculator.rb #実装ファイル
  └── memo.rb #学習用メモ
```
