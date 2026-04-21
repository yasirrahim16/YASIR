```markdown
# ▧ Y-VOIDSYNDICATE ▧
### Advanced Educational Laboratory for Browser Fingerprinting & Device Telemetry
================================================================================

[![Author](https://img.shields.io/badge/Author-Yasir_Rahim-blue.svg)](https://github.com/yasirrahim16)
[![Platform](https://img.shields.io/badge/Platform-Termux%20%7C%20Linux%20%7C%20Kali-success.svg)](#)
[![Version](https://img.shields.io/badge/Version-1.0.0--Stable-orange.svg)](#)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](#)

> **⚠️ CRITICAL SECURITY & ETHICAL DISCLAIMER ⚠️**
> 
> **Y-VOIDSYNDICATE** is developed STRICTLY for educational purposes, academic research, and authorized penetration testing. 
> The creator (**Yasir Rahim**) and contributors are NOT responsible for any misuse, illegal data harvesting, or privacy violations caused by this tool. 
> 
> By cloning, downloading, or using this repository, you agree to the following:
> 1. You will only deploy this tool on devices and networks you own or have explicit, written consent to test.
> 2. You will not use this software for malicious surveillance, unauthorized tracking, or phishing.
> 3. You understand that unauthorized data collection violates global privacy laws (e.g., GDPR, CCPA, PECA).
> 
> **THINK BEFORE YOU TYPE. STAY LEGAL. STAY ETHICAL.**

---

## 📖 Table of Contents
1. [About the Project](#-about-the-project)
2. [Technology Stack](#-technology-stack)
3. [Key Features & Telemetry Capabilities](#-key-features--telemetry-capabilities)
4. [Prerequisites & Setup](#-prerequisites--setup)
5. [Architectural Logic (How It Works)](#-architectural-logic-how-it-works)
6. [Comprehensive Usage Guide](#-comprehensive-usage-guide)
7. [In-Depth Troubleshooting & FAQ](#-in-depth-troubleshooting--faq)
8. [Project Roadmap](#-project-roadmap)
9. [Credits & License](#-credits--license)

---

## 🔍 About the Project

**Y-VOIDSYNDICATE** is an advanced, lightweight web-based telemetry and hardware fingerprinting framework. Built specifically for cyber security instructors, students, and penetration testers, it serves as a practical laboratory to demonstrate the vulnerabilities inherent in modern web browsers and the extent of data exposure during regular internet browsing.

In modern cybersecurity, understanding the attacker's perspective is crucial to building robust defenses. This framework simulates a "watering hole" or targeted data-extraction payload. It proves that a simple web link, when clicked without caution, can expose highly sensitive hardware and geographical metadata. 

Originally designed for the Termux mobile environment to allow on-the-go security auditing, it is fully compatible with professional Linux distributions like Kali Linux and Parrot OS.

---

## ⚙️ Technology Stack

This project utilizes a minimal yet highly effective stack to ensure compatibility across low-resource environments (like mobile phones) and high-end security workstations.

| Component | Technology | Purpose |
| :--- | :--- | :--- |
| **Frontend Payload** | HTML5 / CSS3 | Provides a deceptive, clean UI for the target. |
| **Telemetry Engine** | Advanced JavaScript | Queries the `navigator` and `window` objects for hardware/sensor data. |
| **Backend Processor** | PHP (Version 7.4+) | Parses incoming GET requests, handles IP extraction, and formats logs. |
| **Deployment Env.** | Termux / GNU Linux | The host operating system running the local server. |
| **Tunneling** | Cloudflared (Optional) | Exposes the local PHP server to the public internet securely. |

---

## 🚀 Key Features & Telemetry Capabilities

The **Y-VOIDSYNDICATE** engine is capable of extracting multiple layers of digital identity from a consenting target's browser.

* **🌐 Network Fingerprinting:**
    * **Public IP Extraction:** Automatically logs the target's ISP-provided IP address via server-side remote address headers.
* **📍 Geospatial Intelligence (GEOINT):**
    * **High-Precision GPS:** Utilizes the HTML5 Geolocation API to extract exact Latitude and Longitude coordinates.
    * **Automated Mapping:** Dynamically generates a direct Google Maps URL for instant physical location verification.
* **💻 Hardware & Device Telemetry:**
    * **Platform Detection:** Identifies the underlying operating system (e.g., Linux armv81 for Android, Win32 for Windows).
    * **Screen Resolution Logging:** Captures display width and height to deduce the device form factor (Mobile vs. Desktop).
    * **RAM/Memory Profiling:** Queries `navigator.deviceMemory` to estimate the hardware power of the target device.
    * **Battery Status API:** Captures current battery percentage and charging state (where supported by browser security sandboxes).
* **🕵️ Software & Browser Identity:**
    * **User-Agent Parsing:** Captures the raw User-Agent string to identify the browser type and version.
    * **Language Preferences:** Logs the primary system language configured by the user.
* **📝 Automated Professional Logging:**
    * Formats all intercepted data into a clean, human-readable terminal output (`location.txt`) with precise timestamps.

---

## 🛠️ Prerequisites & Setup

Whether you are running this in a mobile Termux environment or a dedicated Kali Linux machine, follow these precise steps.

### Phase 1: Environment Preparation

**For Termux (Android) Users:**
```bash
# Update and upgrade package repositories
pkg update -y && pkg upgrade -y

# Install required core packages
pkg install git php wget curl openssh -y

# Grant Termux access to local storage (optional but recommended for log backups)
termux-setup-storage

```
**For Linux (Kali/Ubuntu/Debian) Users:**
```bash
# Update repositories
sudo apt update && sudo apt upgrade -y

# Install PHP and Git
sudo apt install php git curl wget -y

```
### Phase 2: Cloning the Repository
```bash
# Clone the master branch of Y-VOIDSYNDICATE
git clone [https://github.com/yasirrahim16/Y-VOIDSYNDICATE.git](https://github.com/yasirrahim16/Y-VOIDSYNDICATE.git)

# Navigate into the project directory
cd Y-VOIDSYNDICATE

# Verify the files are present
ls -la

```
## 🧠 Architectural Logic (How It Works)
To truly master cybersecurity, one must understand the underlying mechanics of an exploit or tool. Here is the academic breakdown of the Y-VOIDSYNDICATE data flow:
 1. **The Trigger (Client-Side Initialization):** When the target opens the index.html link, they are presented with a social engineering prompt (e.g., "Verify Identity"). Upon interaction, the JavaScript engine awakens.
 2. **API Interrogation (Hardware Layer):** The JS payload asynchronously queries multiple web APIs. It requests navigator.getBattery(), reads navigator.deviceMemory, and triggers navigator.geolocation.getCurrentPosition().
 3. **Data Encoding (Transport Layer):** Once the variables are collected, JS structures them into a URI-encoded query string. For example: ?lat=24.9&lon=66.9&ram=8GB&battery=85%.
 4. **The Fetch Request (Network Layer):** The browser silently sends this data payload to log.php running on the attacker's server via an HTTP GET request.
 5. **Server-Side Processing (Backend Layer):** PHP intercepts the request. It extracts the target's IP using $_SERVER['REMOTE_ADDR'], combines it with the GET parameters, formats it into a professional CLI interface string, and appends it to location.txt.
## 💻 Comprehensive Usage Guide
### Step 1: Start the PHP Tracking Server
You need to host the listener locally. Ensure you are inside the Y-VOIDSYNDICATE directory.
```bash
# Start the PHP built-in server on port 8080
php -S 127.0.0.1:8080

```
*(Leave this terminal window running. Do not press Ctrl+C unless you want to stop the server).*
### Step 2: Open a New Terminal Session
 * **In Termux:** Swipe from the left edge of the screen and click "New Session".
 * **In Linux:** Open a new terminal tab.
### Step 3: Start the Log Monitor
You want to see the target data arrive in real-time.
```bash
# Navigate to the directory again
cd Y-VOIDSYNDICATE

# Use tail to follow the file live
tail -f location.txt

```
### Step 4: Expose the Server to the Internet (Tunneling)
To allow targets outside your local Wi-Fi to access the page, use Cloudflare. Open a **third** terminal session.
```bash
# Download cloudflared for your specific architecture (e.g., ARM for Termux)
# (Assuming cloudflared is already installed)

# Create the tunnel
cloudflared trycloudflare --url 127.0.0.1:8080

```
*Copy the https://xxxx-xxxx.trycloudflare.com link provided in the terminal output and send it to your consenting target.*
## 🚧 In-Depth Troubleshooting & FAQ
As a security researcher, you will encounter errors. This section covers the most common Termux, PHP, and Git issues.
### 1. PHP Server Errors
**Error:** php: command not found
 * **Cause:** PHP is not installed or not in your system's PATH.
 * **Solution (Termux):** Run pkg install php.
 * **Solution (Linux):** Run sudo apt install php.
**Error:** Address already in use or Failed to listen on 127.0.0.1:8080
 * **Cause:** Another service (like an older instance of this script) is still running on port 8080.
 * **Solution:** Change the port. Run php -S 127.0.0.1:8081 instead, and make sure your Cloudflare tunnel matches the new port.
### 2. Data Capturing / Telemetry Errors
**Issue:** The location.txt file is completely empty after the target clicks the link.
 * **Cause:** The target did not click "Allow" on the browser's location permission popup, OR the PHP script lacks write permissions.
 * **Solution:** Check directory permissions. Run chmod 777 location.txt. Educate the target to accept permissions in your lab environment.
**Issue:** Battery Level shows as "Access Denied" or RAM shows as "Unknown".
 * **Cause:** Modern browsers (like Firefox or Safari) have strict sandboxing and block the getBattery() and deviceMemory APIs to prevent fingerprinting.
 * **Solution:** This is a feature of modern web security, not a bug. Test the link using Google Chrome for maximum telemetry extraction.
**Issue:** The IP address shows up as 127.0.0.1.
 * **Cause:** You clicked the link on the same device hosting the server without using the public Cloudflare tunnel.
 * **Solution:** Use the Cloudflare URL to test public IP logging.
### 3. Git & GitHub Workflow Errors
**Error:** fatal: remote origin already exists.
 * **Cause:** You are trying to add a GitHub repository link to a folder that is already connected to one.
 * **Solution:** If you need to change the URL, use git remote set-url origin <NEW_URL>.
**Error:** Support for password authentication was removed. Please use a personal access token instead.
 * **Cause:** GitHub no longer allows you to push code using your account password for security reasons.
 * **Solution:** 1. Go to GitHub.com -> Settings -> Developer Settings -> Personal Access Tokens (Tokens classic).
   2. Generate a new token with repo permissions.
   3. When terminal asks for your password during git push, paste the token instead.
**Error:** error: failed to push some refs... Updates were rejected because the remote contains work that you do not have locally.
 * **Cause:** You changed a file directly on the GitHub website, and your local Termux folder is out of sync.
 * **Solution:** Pull the changes first before pushing. Run git pull origin main, fix any merge conflicts, then run git push origin main.
**Security Notice:** I accidentally uploaded my location.txt to GitHub!
 * **Solution:** 1. Delete the file from the repo: git rm --cached location.txt
   2. Commit the deletion: git commit -m "Removed sensitive logs"
   3. Push the fix: git push origin main
   4. Ensure .gitignore is properly configured!
## 🔮 Project Roadmap
The Y-VOIDSYNDICATE framework is continuously evolving. Future updates will focus on shifting from basic web telemetry to advanced network auditing.
 * [x] **Phase 1: Foundation (Current)**
   * Basic HTML/JS payload deployment.
   * Integration of HTML5 Geolocation API.
   * Setup of local PHP logging server.
 * [x] **Phase 2: Hardware Fingerprinting**
   * Implementation of Battery API and Device Memory API.
   * OS and User-Agent parsing logic.
   * Professional terminal report formatting.
 * [ ] **Phase 3: Network Diagnostics (Upcoming)**
   * Internal IP discovery via WebRTC leaks (STUN server requests).
   * Port scanning logic built into the client-side JavaScript.
 * [ ] **Phase 4: Kali Linux Integration**
   * Full migration guide and optimization for Kali Linux setups.
   * Integration with Metasploit Framework payloads.
## 🤝 Credits & License
**Lead Developer & Architect:** Yasir Rahim
**Project Title:** Y-VOIDSYNDICATE
**Purpose:** Cyber Security Education & Defense Research
### The MIT License (MIT)
Copyright (c) 2026 Yasir Rahim
Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
```

```
