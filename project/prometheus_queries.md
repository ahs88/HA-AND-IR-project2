## Availability SLI
### The percentage of successful requests over the last 5m
<code>sum(rate(flask_http_request_total{status=\~"2.*"}[5m]))/sum(rate(flask_http_request_total{method=\~".*",status=\~".*"}[5m]))</code>

## Latency SLI
### 90% of requests finish in these times
<code>histogram_quantile(0.90,sum(rate(flask_http_request_duration_seconds_bucket{job="ec2"}[5m])) by (le, verb))</code>

## Throughput
### Successful requests per second
<code>sum(rate(flask_http_request_total{status=\~"2.*"}[5m]))</code>

## Error Budget - Remaining Error Budget
### The error budget is 20%
<code>1 - ((1 - (sum(increase(flask_http_request_total{status=\~"2.*"}[7d])) by (verb))/sum(increase(flask_http_request_total{method=\~".*",status=\~".*"}[7d])) by (verb)) / (1 - .90))</code>

