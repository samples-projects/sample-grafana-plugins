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

## Grafanaへの読込

1. Introduction
2. Set up your environment
   1. Grafana pluginフォルダをマウント。
   2. Grafana を再起動。
3. Create a new plugin
   1. `作り方`に従ってpluginを生成。
4. Anatomy of a plugin
   1. `dist/pplugins.json`の`type, name, id`に適切な値を設定する。
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
