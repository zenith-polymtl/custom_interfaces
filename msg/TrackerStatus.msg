# Header stamp = time the message was published/measured on the vehicle
std_msgs/Header header

# GPS fix time (UTC from the receiver)
builtin_interfaces/Time gps_time

# Position
float64 latitude        # degrees, WGS84, +N
float64 longitude       # degrees, WGS84, +E
float32 altitude        # meters above WGS84 ellipsoid (or MSL, document which)

# Link quality
int16 rssi              # dBm (typically negative, e.g. -72)

# Power
float32 battery_voltage # volts

# GNSS status
uint8 satellite_count   # satellites used in the fix