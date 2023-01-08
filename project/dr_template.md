# Infrastructure

## AWS Zones
us-east2<br>
us-west1

## Servers and Clusters

### Table 1.1 Summary
| Asset      | Purpose           | Size                                                                   | Qty                                                             | DR                                                                                                           |
|------------|-------------------|------------------------------------------------------------------------|-----------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------|
| Ec2 VM | web server | AWS size  t3.micro and t3.medium |  has 2 instances | Primary region is us-east-2 also replicated in us-west-1 |
| EKS cluster | contains prometheus and grafana server and node exporter running in pods | version 1.2.1 | Each eks cluster has one node on a ec2 t3.medium instance | Primary region is us-east-2 also replicated in us-west-1 |
| VPC | for networking between resources  | NA | 10.0. 0.0/16 , containing IP addresses from 10.0.0.0 to 10.0.255.255 | Primary region is us-east-2 also replicated in us-west-1 |
| Ec2 loadbalancer | distributes traffic to instances of grafana server | 1 | 10.0. 0.0/16 , containing IP addresses from 10.0.0.0 to 10.0.255.255 | Primary region is us-east-2 also replicated in us-west-1 |

### Descriptions
<ul>
<li>
  Ec2 VM instance -<br>
    <ul> 
      <li> t3.micro - This has a web server serving the functional rest apis using flask framework.</li>
      <li> t3.medium - has a eks node running.</li>
    </ul>
</li>  
<li>EKS cluster - contains prometheus server pods to store metric data in database, grafana server pods to build dashboards, node exporter pods to collect system metrics from the web server.</li> 
<li>VPC  - allows networking between resources configured within the region through subnet.</li>
<li>EC2 Loadbalancer - to distribute load across grafana server pods.</li>
</ul>
  
## DR Plan
### Pre-Steps:
List steps you would perform to setup the infrastructure in the other region. It doesn't have to be super detailed, but high-level should suffice.

## Steps:
You won't actually perform these steps, but write out what you would do to "fail-over" your application and database cluster to the other region. Think about all the pieces that were setup and how you would use those in the other region
