# AWS Auto Scaling + Application Load Balancer Project

## Project Overview

This project demonstrates how to build a highly scalable and fault-tolerant architecture using AWS Auto Scaling Group (ASG) integrated with an Application Load Balancer (ALB).

---

## Architecture

* Application Load Balancer (ALB)
* Auto Scaling Group (ASG)
* EC2 Instances (Nginx)
* CloudWatch (for monitoring CPU)

---

## Features

* Dynamic scaling based on CPU utilization
* Load balancing across multiple EC2 instances
* High availability and fault tolerance
* Automated instance configuration using user data script

---

## Technologies Used

* AWS EC2
* AWS ALB
* AWS Auto Scaling
* AWS CloudWatch
* Nginx

---

## Setup Steps

### 1. Create Launch Template

* Use Amazon Linux AMI
* Add user-data script (see scripts/user-data.sh)

### 2. Create Target Group

* Protocol: HTTP
* Health check path: /

### 3. Create Application Load Balancer

* Internet-facing
* Attach target group

### 4. Create Auto Scaling Group

* Min: 1
* Desired: 2
* Max: 4
* Attach ALB

### 5. Configure Scaling Policy

* Target tracking policy
* CPU utilization: 50%

---

## Testing

* Installed stress tool to simulate CPU load
* Observed:

  * Scale-out when CPU increased
  * Scale-in when CPU decreased

---

## Key Learnings

* Auto Scaling ensures performance and cost optimization
* ALB distributes traffic efficiently
* CloudWatch helps monitor system metrics
* Real-world DevOps architecture implementation

---

## Conclusion

This project demonstrates a production-ready scalable system using AWS services.

---

## Author

Dhinakar M
