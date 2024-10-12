## work in progress self hosted monitoring stack

- `terraform init`
- `terraform validate`
- `terraform plan`
- `terraform apply -auto-approve`

- Grafana will be running on <public_ip>:3000
- Prometheus will be running on <public_ip>:9090

verify the installation by visiting the respective URLs / running the following commands:

```bash
systemctl status prometheus
systemctl status grafana-server
```
