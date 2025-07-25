Fix Windows Printer Error 0x0000011b
📜 Description
This repository provides a simple Batch script to automatically resolve the common Windows printer error 0x0000011b. This error typically occurs after Windows updates that enhance security for network printer sharing, often preventing client machines from connecting to shared printers.

The script simplifies the process of adding a specific registry key (RpcAuthnLevelPrivacyEnabled) and restarting the Print Spooler service, making printer sharing functional again with minimal user intervention.

✨ Features
Automated Fix: Automatically creates/updates the necessary registry key.

Service Restart: Restarts the Print Spooler service for immediate effect.

User-Friendly: Designed for ease of use with an automatic Administrator elevation prompt (UAC).

Solves 0x0000011b: Directly addresses the specific printer connection error.

🚀 How to Use
Download the Script:

Click on the green "Code" button on this GitHub page.

Select "Download ZIP" and extract the contents to a folder on your computer.

Alternatively, you can copy the script content directly from solve_printer_problem.bat and paste it into a new text file, then save it as solve_printer_problem.bat.

Run the Script:

Navigate to the folder where you saved fix-printer-error.bat.

Double-click on fix-printer-error.bat.

Approve Administrator Access:

A User Account Control (UAC) prompt will appear asking for administrator permission. Click "Yes" to allow the script to run. (The script automatically requests this elevated privilege.)

Completion:

The script will execute, add the registry key, and restart your Print Spooler service.

Once completed, press any key to close the command window.

Test Your Printer:

Attempt to connect to your shared network printer or print a test page again. The error should now be resolved.

⚠️ Important Note
While this script provides an effective solution to the 0x0000011b error, it does so by disabling a specific RPC authentication security enhancement introduced by Windows updates. In high-security enterprise environments, it's generally recommended to explore alternative, more secure solutions (like updated printer drivers or ensuring all systems are fully patched with the latest secure print components). For home users and small office networks, this script offers a quick and practical fix.

🤝 Contributing
Contributions are welcome! If you have suggestions for improvements or find any issues, feel free to:

Open an issue on this repository.

Submit a pull request with your changes.

