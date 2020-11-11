#!/bin/bash

cd backend-datasource-plugin
yarn install
yarn dev
cd  ../

cd datasource-plugin
yarn install
yarn dev
cd  ../

cd panel-plugin
yarn install
yarn dev
cd  ../
