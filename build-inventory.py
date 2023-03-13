import json
import subprocess
import sys
import os
print(os.getcwd())

process = subprocess.Popen(["terraform", "output", "-json"],stdout=subprocess.PIPE,stderr=subprocess.PIPE)
out, err = process.communicate()
ouput = out.decode('utf-8')

data = json.loads(ouput)
ips = data['vm_ip']['value']
#filename = 'modules/' + sol +  '/hosts.ini'
filename = 'hosts.ini'
print(filename)
with open(filename,'w') as fh:
    for ip in ips:
        fh.write(ip.rstrip() + '\n')

