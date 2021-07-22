build:
	@docker build -t ubuntu20grafana .


run:
	@docker run \
-d -t \
--privileged \
-p 3000:3000 \
--hostname grafana-ubuntu --name grafana-ubuntu ubuntu20grafana
