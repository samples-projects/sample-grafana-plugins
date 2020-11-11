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
