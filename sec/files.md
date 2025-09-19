<h1 align="center">Media Streaming</h1>

Buy custom AMIs from Marketplace with Lustre kernel support instead. EKS, Batch, Slurm might be more helpful than Echo server *imgo*. EC2 Instance Connect Endpoint is intended specifically for management traffic use cases (NAT), not for high volume data transfers (public). 
```
EC2 > System Manager > Node > Connect 
pwd, ssm-user, ls /or\ nc, less, dmesg

Convert screenshots: mogrify -format jpg -quality 90 *png 
Troubleshoot: textract 1:10 pdf:img ~ 2 minutes

FSx > Elastic IP > Kinesis > Go.yml > RDS > SageMaker > S3 

Paystub, Vaccination card, Loan application, 
Health insurance card, Financial document,
Security exchange commission filing, Form 1005
```
Reusable prompt: How to attach Elastic IP to EC2 instance using Terraform. 
Using Terraform for EC2 configuration, such as assigning an Elastic IP to an IoT Slave device like an Arduino, is a valid use case.

1. AWS IoT Device SDK to establish a secure connection between the EC2 instance running the VME core and the AWS IoT service. 
2. Once the connection is made, you can use the IoT APIs to manage and monitor your IoT devices, send commands, and receive data from.

Lightsail (VPS) for WordPress. GraphQL is used in social media for API customization. Aurora is used for prizes instead of PostgreSQL (RDS).
Beanstalk cannot run file uploads or aggregate data (ECS). Go, kinesis, splunk, spark, fsx, sagemaker. Bombora intent topics. 
Golang are not supported enough to HPC pipelines unlike Java. Google Guava for concurrent hash table to S3 with oak{UID}.txt simultaneously.
```
ssh -i Arn.pem ubuntu@ec2-16-170-236-..eu-north-1.compute.amazonaws.com
scp -i Arn.pem red.txt ubuntu@ec2-16-170-236-..eu-north-1.compute.amazonaws.com
aws ec2 describe-instances --instance-ids i-04596140d | 172.31..., AIPA4MTWLX

scp ~/.ssh/id_dsa.pub user@host:~/.ssh/
cat ~/.ssh/id_dsa.pub >> ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys && chmod 700 ~/.ssh

nc -z ssm.eu-north-1.amazonaws.com 443
nc -z ec2messages.eu-north-1.amazonaws.com 443
nc -z ssmmessages.eu-north-1.amazonaws.com 443
ls /usr/share/ec2-instance-connect/
sudo less /lib/systemd/system/ssh.service.d/ec2-instance-connect.conf

[Service]
ExecStart=
ExecStart=/usr/sbin/sshd -D -o "AuthorizedKeysCommand /usr/share/ec2-instance-connect/eic_run_authorized_keys %%u %%f" -o \
"AuthorizedKeysCommandUser ec2-instance-connect" $SSHD_OPTS

sudo mount -t lustre -o relatime,flock fs-078ed3232b54a39cc.fsx.eu-north-1.amazonaws.com@tcp:/m7p55bmv /fsx | tee \
/home/ssm-user/tro.txt && sudo dmesg >> /home/ssm-user/tro.txt && sudo nano /home/ssm-user/tro.txt
```
LLQ (Low Latency Queues) may be disabled if the system does not require low latency for network traffic or if enabling LLQ leads to additional overhead or resource consumption. Free Tier limits in Trainium. 

NVM: SSD, EPROM, optical / floppy disks. The most common use of NMI is to prevent data corruption but it can give false alarms. 
```
Linux version 6.8.0-1008-aws (x86_64-linux-gnu-gcc-13 (Ubuntu 13.2.0-23ubuntu4) 13.2.0, GNU ld (GNU Binutils for Ubuntu) 2.42).
KERNEL supported cpus: Intel GenuineIntel, AMD AuthenticAMD, Hygon HygonGenuine, Centaur CentaurHauls, zhaoxin Shanghai.
(BOOT_IMAGE=/vmlinuz-6.8.0-1008-aws) (root=PARTUUID=227fdd7f-aae5-441a-80c5-ad2) (console=tty1 console=ttyS0) 
(vme_core.io_timeout=4294967295 # bus controller for runbooks) 
(panic=-1 # don't reboot) ftrace: allocated 227 pages (GB) with 5 groups. Spectre v2 / SpectreRSB mitigation: Filling RSB on context switch. 
(Spectre leaves CPU vulnerable to RETBleed attacks # side-channel). SRCU the update operation does not wait for all readers to finish.
MDS CPU bug present and SMT on. MDS (Microarchitectural Data Sampling) CPU bug when simultaneous multithreading (SMT) is enabled.
NMI Watchdog disabled # the system is no longer actively monitoring for parity errors inside the memory subsystem. 
NMI is a hardware mechanism that can trigger a system reset if OS hangs, offering restart instead of a complete fallback (PDC).
CPU model 85 does not have support for performance monitoring unit (PMU) driver. Only Prometheus and Watchdog is supported.
apparmor-"STATUS" operation-"profile_load" profile-"unconfined" name=4D6F6E676F444220436F6D70617373 pid=335 comm="apparmor_parser"
# AppArmor Security Profile: "MongoDB Compass" for unconfined in conjunction with "lpassword", "rsyslogd", "QtWebEngine", "brave". 
```
ACPI Operating System Capabilities (OSC) evaluation for CPUs failed and the system is trying to use a different method, possibly Platform 
Design Configuration (PDC). Ubuntu vs AWS Linux. PNP0A03: fail to add MMCONFIG information # see more at https://lwn.net/Articles/263288/, 
PNP0A08 driver can only manage PCI buses via _PRS/_CRS/_SRS, which contain the device-specific details including ECAM inside PNP0C02.
```
getent group, /etc/group, /etc/passwd, 
/var/log/syslog, /proc/sys/fs/, /proc/acpi

lsof -i:327,336,339,341,906 && /sbin/losetup --list 
#loop3: detected capacity from 0 to 8, snapd disabled
```
Go web app for should work even if CONFIGIMADISABLE_HTABLE is disabled inside an EC2 instance where files are being uploaded back-and-forth. 
The concurrent hash table implementation in Go, such as sync.Map, allows you to safely access and modify the map from multiple channels. 
Test data races inside Echo with goroutines assigning UIDs to various browsers simultaneously. 
Use HAProxy's **stick-table** to maintain session persistence for incoming requests inside S3 from EC2. PDC launches HPC clusters.  
