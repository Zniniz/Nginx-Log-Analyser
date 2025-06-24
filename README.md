# [Nginx Log Analyser](https://roadmap.sh/projects/nginx-log-analyser)

This project is a simple command-line tool to analyze Nginx access logs.  
Designed for practising **Shell** scripting skills.

---

## Requirement

Insert the `.txt` file inside your folder:

```bash
wget -O nginx-access.txt https://gist.githubusercontent.com/kamranahmedse/e66c3b9ea89a1a030d3b739eeeef22d0/raw/77fb3ac837a73c4f0206e78a236d885590b7ae35/nginx-access.log
```

# Usage

1. Clone or download the script `nginx-analyzer.sh`

2. Make it executable:

	```bash
	chmod +x nginx-analyzer.sh 
	```

3. Run the script

	```bash
	./nginx-analyzer.sh
	```

# Output

The script will produce output similar to this:

```
Top 5 IP addresses with most requests:
178.128.94.113 - 1087 requests
142.93.136.176 - 1087 requests
138.68.248.85 - 1087 requests
159.89.185.30 - 1086 requests
86.134.118.70 - 277 requests

Top 5 most requested paths:
/v1-health - 4560 requests
/ - 270 requests
/v1-me - 232 requests
/v1-list-workspaces - 127 requests
/v1-list-timezone-teams - 75 requests

Top 5 response status codes:
200 - 5740 requests
404 - 937 requests
304 - 621 requests
400 - 260 requests
403 - 23 requests

Top 5 user agents:
DigitalOcean - 4347 requests
Mozilla/5.0 - 513 requests
Mozilla/5.0 - 332 requests
Custom-AsyncHttpClient - 294 requests
Mozilla/5.0 - 282 requests
```
