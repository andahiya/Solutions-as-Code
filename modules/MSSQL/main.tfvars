

vsphere_server = "flashstack-vcenter.puretec.purestorage.com"
vsphere_user = "administrator@vsphere.local"
vsphere_password = ""

#common
osguest_id = "windows9Server64Guest"
internal_domain = "puretec.purestorage.com"
vmSubnet = "2210"
dns_servers = ["10.21.237.250"]
vm_cluster = "Management-Cluster"
dc = "SolutionsLab"

vm_gateway = "10.21.210.1"


#vm 
vm_count = "8"
vm_name = "mssql-test"
network = "10.21.210.0"
netmask = "24"
vm_ip = ["10.21.210.22"]
vmware_os_template = "windows-server-2022-standard-core-v23.02"
vm_cpus = 16
vm_memory = 16384
os_disk_size = "300"
data_disk_size = "600"
datastore_os = "FlashStack-Prod"
datastore_data = "Datastore-DB"
winadminpass = "VMware1!"
contentlib_name = "SolutionsLab-ContentLib"








