using 'br/public:avm/res/container-service/managed-cluster:0.4.1'

// Required parameters
param name = 'aks-cluster-dev'
param primaryAgentPoolProfiles = [
  {
    count: 3
    mode: 'System'
    name: 'systempool'
    vmSize: 'Standard_DS2_v2'
  }
]
// Non-required parameters
param location = 'uksouth'
param maintenanceConfigurations = [
  {
    name: 'aksManagedAutoUpgradeSchedule'
    maintenanceWindow: {
      durationHours: 4
      schedule: {
        weekly: {
          dayOfWeek: 'Sunday'
          intervalWeeks: 1
        }
      }
      startDate: '2024-10-19'
      startTime: '00:00'
      utcOffset: '+00:00'
    }
  }
]
param managedIdentities = {
  systemAssigned: true
}

// Can't update this property
// param nodeResourceGroup = 'rg-aks-node'
