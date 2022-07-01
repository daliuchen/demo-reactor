## 格式化
style:
	@echo "格式化文件"
## test
test:
	mvn test
## package
package:
	mvn clean package -DMaven.test.skip=true
## deploy

## run

run:build
	java -jar target/test-reactor-1.0-SNAPSHOT.jar






clean:
	mvn clean