asdf plugin add maven
asdf plugin add quarkus
asdf plugin add nodejs
asdf plugin add k6

#21
asdf install java adoptopenjdk-21.0.5+11.0.LTS
asdf global java adoptopenjdk-21.0.5+11.0.LTS

asdf install maven 3.9.9
asdf global maven 3.9.9

asdf install nodejs 22.11.0
asdf global nodejs 22.11.0

asdf install k6 0.55.0
asdf global k6 0.55.0

java --version
mvn --version
node --version
k6 --version
