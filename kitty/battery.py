import psutil

class Stuff:
    battery = psutil.sensors_battery()
    plugged = battery.power_plugged
    percent = battery.percent
