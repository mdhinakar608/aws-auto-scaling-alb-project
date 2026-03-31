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

## Images
<img width="1322" height="404" alt="Screenshot 2026-03-31 112013" src="https://github.com/user-attachments/assets/660a9431-80fd-4ca7
<img width="1627" height="689" alt="Screenshot 2026-03-31 112024" src="https://github.com/user-attachments/assets/3e5589c3-6c0f-4ec7-8b28-e50036d9133f" />
-811f-b5b27eda45b5" />
<img width="1561" height="658" alt="Screenshot 2026-03-31 112035" src="https://github.com/user-attachments/assets/081f6fdf-7a59-44ef-b6fc-a9cd202a0764" />
<img width="1637" height="737" alt="Screenshot 2026-03-31 112052" src="https://github.com/user-attachments/assets/f5d1b905-5378-4ca9-9d74-2e767abe4378" />
<img width="1840" height="795" alt="Screenshot 2026-03-31 112114" src="https://github.com/user-attachments/assets/794aca1a-efb6-450d-a421-abe4648b1154" />
<img width="1557" height="533" alt="Screenshot 2026-03-31 112202" src="https://github.com/user-attachments/assets/2adbaa8f-f95f-42ba-bbd9-c99e56186451" />
<img width="1599" height="466" alt="Screenshot 2026-03-31 112233" src="https://github.com/user-attachments/assets/b7a2ed53-bbe7-480b-b92f-0265c4afe3f2" />


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
