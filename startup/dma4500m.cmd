#@field IPADDR
#@type STRING
#IP or hostname of the TCP endpoint.
#
#@field PREFIX
#@type STRING
#Prefix for EPICS PVs.

require dma4500m

#Specifying the TCP endpoint and port name
drvAsynIPPortConfigure("$(PREFIX)-asyn-port", "$(IPADDR):4001")

#Load your database defining the EPICS records
dbLoadRecords(dma4500m.db, "P=$(PREFIX), PORT=$(PREFIX)-asyn-port")
