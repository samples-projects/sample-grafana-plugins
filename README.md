# grafana-plugins

## 作り方

```bash
$ npx @grafana/toolkit plugin:create my-grafana-plugin
? Select plugin type
❯ Panel Plugin
  Datasource Plugin
  Backend Datasource Plugin
$ cd my-grafana-plugin
$ yarn install
$ yarn dev
```

<https://grafana.com/docs/grafana/latest/developers/plugins/>

## Build a panel plugin

1. Introduction
2. Set up your environment
   1. Grafana pluginフォルダをマウント。
   2. Grafana を再起動。
3. Create a new plugin
   1. `作り方`に従ってpluginを生成。
4. Anatomy of a plugin
   1. `dist/plugins.json`の`type, name, id`に適切な値を設定する。
   2. `module.ts`を作成する。これはエントリポイントを記述するもの。
5. Panel plugins
   1. Grafana 6.0はAngularJSベースだったが、現時点はReactJSベースにすべき。
   2. `src/SimplePanel.tsx`で`props`
   3. 開発の流れは以下の通り。
      1. まずパネルをダッシュボードに追加する。
         1. Grafanaをブラウザで開く。
         2. 新しいダッシュボードとパネルを作成する。
         3. 可視化タイプのリストからあなたのパネルを選択する。
         4. ダッシュボードを保存する。
      2. 次に手順を実施する。
         1. `SimplePanel.tsx`を適当に変更する。
         2. `yarn dev`を実行する。
         3. ブラウザでGrafanaを再表示する。
6. Add panel options
7. Create dynamic panels using data frames
8. Configurations

## Build a source plugin

1. Introduction
2. Set up your environment
   1. Grafana pluginフォルダをマウント。
   2. Grafana を再起動。
3. Create a new plugin
   1. `作り方`に従ってpluginを生成。
4. Anatomy of a plugin
   1. `dist/plugins.json`の`type, name, id`に適切な値を設定する。
   2. `module.ts`を作成する。これはエントリポイントを記述するもの。
5. Data source plugins
   1. query メソッドは、外部DBからデータを取得し、Grafanaが認識できる形式でデータを返す。
   2. testDatasource メソッドは、動作確認用のデートを読み込む。
6. Data frames
   1. `const query = defaults(target, defaultQuery);`でqueryのデフォルトクエリを読み込む。
   2. data frameを作成する。
   3. data frame にvalueを入れる。
7. Define a query
   1. クエリモデルを定義する。つまり、クエリで送信する変数。
   2. モデルをフォームにバインドする。
   3. queryメソッド内でプロパティを使用する。
8. Configure your data source
   1. オプションモデルを定義する。
   2. モデルをフォームにバインドする。
   3. オプションを使用する。
9. Get data from an external API
10. Configurations

## プラグインの種類

プラグインは4種類ある。

> Grafanaプラグインには4つの主要なフレーバーがあります。これらは、データソース、バックエンド、パネル、アプリです。それぞれが独自の利点と制限を備えて設計されています。ここでは、それぞれの簡単な概要とそれらが達成することを示します。
>
> - **データソース**：これらのプラグインを使用すると、HTTPを介して通信できる任意のデータベースとの対話を有効にできます。
> - **バックエンド**：バックエンドでデータソースをラップして、データのアラートを有効にします。
> - **パネル**：フロントエンドでデータをレンダリングするカスタム方法を提供します。
> - **アプリ**：ユーザーがページのまったく新しいスタイルを作成し、パネルとデータソースを一緒にラップし、システムのまったく異なるエクスペリエンスを提供できるようにします。
>
> <https://qiita.com/MetricFire/items/95f0d6424eaac2164095>
