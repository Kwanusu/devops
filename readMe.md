
# System Health Monitor

A Bash-based system monitoring tool that logs CPU and memory usage at regular intervals, alerts on threshold breaches, and simulates a DevOps pipeline using the CALMS framework.

---

## 📋 Project Overview

This project monitors system health using a Bash script scheduled via `cron`. It logs CPU and memory metrics, issues alerts when thresholds are exceeded, and enforces basic security and configuration management practices.

---

## 🧠 CALMS Framework Application

- **Culture**: Collaborative Git-based development.  
- **Automation**: Bash + `cron` automate system monitoring.  
- **Lean**: Logs only essential metrics (CPU, memory).  
- **Measurement**: System metrics logged for trend analysis.  
- **Sharing**: Alerts and logs simulate info-sharing across teams.

See [`calms_summary.md`](./calms_summary.md) for full details.

---

## 🛠️ Components

| File                | Description                                  |
|---------------------|----------------------------------------------|
| `system_monitor.sh`  | Main script to monitor CPU/memory and alert  |
| `monitor.conf`       | Dummy config file (SMTP simulation)           |
| `calms_summary.md`   | Summary of CALMS framework                     |
| `~/logs/`            | Log output directory (metrics + alerts)       |

---

## ⚙️ Usage

### 1. Make the script executable
```bash
chmod +x system_monitor.sh
```

### 2. Run manually (for testing)
```bash
./system_monitor.sh
```

### 3. Schedule with `cron`

Edit the cron jobs:
```bash
crontab -e
```

Add this line to run the script every 5 minutes:
```
*/5 * * * * /bin/bash /home/kayjay/desktop/DevOps/week1-challenge/system_monitor.sh
```

### Log files
- `~/logs/system_metrics.log` — CPU and memory metrics  
- `~/logs/alerts.log` — Alerts when thresholds are breached

---

## 🔒 Security and Configuration

- Script permissions:  
  ```bash
  chmod 700 system_monitor.sh
  ```
- `monitor.conf` contains mock SMTP details (simulation).  
- Unauthorized access attempts to config file are logged in `alerts.log`.

---

## 📦 Git Workflow

```bash
git init
git checkout -b feature/monitor
git add .
git commit -m "Initial commit with monitoring script and configs"
git push -u origin feature/monitor
```

Merge into main via GitHub or CLI.

---

## ✅ Future Enhancements

- Email alerts (SMTP or sendmail integration)  
- Log rotation  
- Dashboard for visual metrics  
- Docker container for isolated testing  

---

## 🧑‍💻 Author

**Kwanusu Joseph**  
📧 kwanusujoseph@gmail.com  
🔗 [GitHub Profile](https://github.com/Kwanusu)
