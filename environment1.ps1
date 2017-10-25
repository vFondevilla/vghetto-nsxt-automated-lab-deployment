## Environment vars for multiple labs

# vCenter Server used to deploy Lab
$VIServer = "vcenter.primp-industries.com"
$VIUsername = "primp"
$VIPassword = "MY-SUPER-DUPER-SECURE-PASSWORD-IS-VMWARE-123"

# Nested ESXi VMs to deploy
$NestedESXiHostnameToIPs = @{
"vesxi65-1" = "172.30.0.171"
"vesxi65-2" = "172.30.0.172"
"vesxi65-3" = "172.30.0.173"
}

# Nested ESXi VM Resources
$NestedESXivCPU = "2"
$NestedESXivMEM = "12" #GB
$NestedESXiCachingvDisk = "4" #GB
$NestedESXiCapacityvDisk = "12" #GB

# VCSA Deployment Configuration
$VCSADeploymentSize = "tiny"
$VCSADisplayName = "vcenter65-1"
$VCSAIPAddress = "172.30.0.170"
$VCSAHostname = "vcenter65-1.primp-industries.com" #Change to IP if you don't have valid DNS
$VCSAPrefix = "24"
$VCSASSODomainName = "vsphere.local"
$VCSASSOSiteName = "virtuallyGhetto"
$VCSASSOPassword = "VMware1!"
$VCSARootPassword = "VMware1!"
$VCSASSHEnable = "true"

# General Deployment Configuration for Nested ESXi, VCSA & NSX VMs
$VMCluster = "Primp-Cluster"
$VirtualSwitchType = "VDS" # VSS or VDS
$VMNetwork = "dv-access333-dev"
$VMDatastore = "himalaya-local-SATA-dc3500-1"
$VMNetmask = "255.255.255.0"
$VMGateway = "172.30.0.1"
$VMDNS = "172.30.0.100"
$VMNTP = "pool.ntp.org"
$VMPassword = "VMware1!"
$VMDomain = "primp-industries.com"
$VMSyslog = "172.30.0.170"
# Applicable to Nested ESXi only
$VMSSH = "true"
$VMVMFS = "false"

# Name of new vSphere Datacenter/Cluster when VCSA is deployed
$NewVCDatacenterName = "Datacenter"
$NewVCVSANClusterName = "VSAN-Cluster"

# NSX-T Configuration
$DeployNSX = 1
$NSXRootPassword = "VMware1!"
$NSXAdminUsername = "admin"
$NSXAdminPassword = "VMware1!"
$NSXAuditUsername = "audit"
$NSXAuditPassword = "VMware1!"
$NSXSSHEnable = "true"
$NSXEnableRootLogin = "true" # this is required to be true for now until we have NSX-T APIs for initial setup
$NSXPrivatePortgroup = "dv-private-network"

$TunnelEndpointName = "TEP-IP-Pool"
$TunnelEndpointDescription = "Tunnel Endpoint for Transport Nodes"
$TunnelEndpointIPRangeStart = "192.168.1.10"
$TunnelEndpointIPRangeEnd = "192.168.1.20"
$TunnelEndpointCIDR = "192.168.1.0/24"
$TunnelEndpointGateway = "192.168.1.1"

$OverlayTransportZoneName = "Overlay-TZ"
$VlanTransportZoneName = "VLAN-TZ"

$LogicalSwitchName = "Edge-Uplink"
$LogicalSwitchVlan = "0"

$ESXiUplinkProfileName = "ESXi-Uplink-Profile"
$ESXiUplinkProfilePolicy = "FAILOVER_ORDER" # Leave alone unless you know what you're doing
$ESXiUplinkProfileActivepNIC = "vmnic2" # vminic2 or vminic 3, Leave alone unless you know what you're doing
$ESXiUplinkProfileTransportVLAN = "0"
$ESXiUplinkProfileMTU = "1600"

# NSX-T Manager Configurations
$NSXTMgrDeploymentSize = "small"
$NSXTMgrvCPU = "2"
$NSXTMgrvMEM = "8"
$NSXTMgrDisplayName = "nsxt-mgr"
$NSXTMgrHostname = "nsxt-mgr.primp-industries.com"
$NSXTMgrIPAddress = "172.30.0.201"

# NSX-T Controller Configurations
$NSXTCtrvCPU = "2"
$NSXTCtrvMEM = "6"
$NSXControllerSharedSecret = "s3cR3ctz"
$NSXTControllerHostnameToIPs = @{
"nsxt-ctr1" = "172.30.0.203"
"nsxt-ctr2" = "172.30.0.204"
"nsxt-ctr3" = "172.30.0.205"
}

# NSX-T Edge Configuration
$NSXTEdgevCPU = "2"
$NSXTEdgevMEM = "4"
$NSXTEdgeHostnameToIPs = @{
"nsxt-edge" = "172.30.0.202"
}

# Advanced Configurations
# Set to 1 only if you have DNS (forward/reverse) for ESXi hostnames
$addHostByDnsName = 0
