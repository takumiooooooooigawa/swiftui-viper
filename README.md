# swiftui-viper

swiftUIにviperの考え方を組み込むことができるかどうかの調査

-> 結論、swiftUIとviperの相性は悪い
-> 画面イベントや画面遷移の機能がswiftUIで提供されるUIコンポーネント側に寄せられている + 遷移の処理が手続型ではなく宣言型で記載するようになっているため
-> 少なくともswiftUIのアプリにRouterは必要ない
