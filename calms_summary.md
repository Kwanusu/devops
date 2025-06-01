## CALMS Framework Summary

The CALMS framework (Culture, Automation, Lean, Measurement, Sharing) is a DevOps-oriented model used to assess and guide the implementation of technical and organizational practices in IT projects. Applied to the System Health Monitoring project, CALMS guides both process and tool usage.

**Culture** emphasizes collaboration and transparency. In this project, version control via Git fosters a shared development culture, where team members can review and enhance each other's work efficiently.

**Automation** is achieved through Bash scripting and cron jobs. The `system_monitor.sh` script automates the collection and logging of system health metrics every 5 minutes, ensuring consistent and timely monitoring without manual intervention.

**Lean** principles are followed by minimizing overhead and focusing on essential metrics such as CPU and memory usage. The script is designed to parse only critical data, helping reduce noise and quickly surface anomalies.

**Measurement** is implemented by logging CPU and memory usage with timestamps to `/var/log/system_metrics.log`. Alerts are logged when thresholds exceed 80%, enabling quantitative analysis and operational awareness.

**Sharing** of insights is simulated by maintaining accessible log files that can be reviewed by the team. Although alerts are not emailed, they are available in shared logs (`alerts.log`) for collaborative triage and decision-making.

This project demonstrates how CALMS can guide technical implementation while fostering a culture of collaboration, continuous monitoring, and improvement.
