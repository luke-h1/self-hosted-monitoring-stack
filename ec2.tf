# PROMETHEUS SERVICE
resource "aws_instance" "prometheus" {
  ami           = var.ami_id
  instance_type = var.instance_type
  user_data     = filebase64("${path.module}/scripts/prometheus-install.sh")

  tags = merge(var.tags, {
    Name = "prometheus"
  })
  security_groups = [aws_security_group.monitoring.name]
}

# GRAFANA SERVICE
resource "aws_instance" "grafana" {
  ami           = var.ami_id
  instance_type = var.instance_type
  user_data     = filebase64("${path.module}/scripts/grafana-install.sh")

  tags = merge(var.tags, {
    Name = "grafana"
  })
  security_groups = [aws_security_group.monitoring.name]
}

# ALERTMANAGER SERVICE
# TODO


# BLACKBOX EXPORTER SERVICE
# TODO
