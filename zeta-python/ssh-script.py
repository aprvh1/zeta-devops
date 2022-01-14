# Import the library
# ips = "192.158.1.38,192.158.1.37"
import argparse

parser = argparse.ArgumentParser()
parser.add_argument('--ips', type=str, required=True)

args = parser.parse_args()
ips = args.ips.split(',')
print(ips)

for ip in ips:
    print(ip)
