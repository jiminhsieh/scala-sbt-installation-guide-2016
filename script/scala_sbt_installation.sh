#!/bin/bash

wget http://downloads.lightbend.com/scala/2.11.8/scala-2.11.8.tgz \
&& wget https://dl.bintray.com/sbt/native-packages/sbt/0.13.12/sbt-0.13.12.zip

tar -xvf scala-2.11.8.tgz
unzip sbt-0.13.12.zip

mv sbt sbt-0.13.12

mkdir ~/.scala
mkdir ~/.sbt


cp -r scala-2.11.8 ~/.scala
cp -r sbt-0.13.12 ~/.sbt

echo 'export SCALA_HOME="~/.scala/scala-2.11.8"' >> ~/.bashrc
echo 'PATH=$SCALA_HOME/bin:$PATH' >> ~/.bashrc
echo 'export SBT_HOME="~/.sbt/sbt-0.13.12"' >> ~/.bashrc
echo 'PATH=$SBT_HOME/bin:$PATH' >> ~/.bashrc

exec bash

rm scala-2.11.8.tgz sbt-0.13.12.zip
rm -rf scala-2.11.8 sbt-0.13.12
