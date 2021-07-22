mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
mkfile_dir := $(dir $(mkfile_path))
run:
	@docker run \
-d -t \
--privileged \
-p 9090:9090 \
--volume $(mkfile_dir)/prometheus.yml:/etc/prometheus/prometheus.yml \
--hostname prometheus-server --name prometheus-server prom/prometheus
