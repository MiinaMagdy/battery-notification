# battery-notification
Simple bash script that makes notification when the battery percentage reaches up to 95%

## Installation
1. Clone the repository to your local machine
```bash
git clone git@github.com:MiinaMagdy/battery-notification.git
```
2. Run the following command
```bash
chmod +x ./battery-notification/battery-full-notification.sh
```
3. copy to `/usr/bin/` directory
```bash
sudo cp -r ./battery-notification /usr/bin/
```
4. Open startup applications
```bash
gnome-session-properties
```
5. press the `add` button and add the following in the command section
```bash
/usr/bin/battery-notification/battery-full-notification.sh
```
![image](https://user-images.githubusercontent.com/71466151/233751215-81091191-8b95-4ae3-a62a-d1759ee54854.png)

6. Reboot and Done!
