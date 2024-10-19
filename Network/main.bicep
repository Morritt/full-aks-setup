resource workspace 'Microsoft.OperationalInsights/workspaces@2023-09-01' existing = {
  name: 'la-workspace-dev'
  scope: resourceGroup('rg-monitoring-dev')
}

module virtualNetwork 'br/public:avm/res/network/virtual-network:0.4.1' = {
  name: 'virtualNetworkDeployment'
  params: {
    // Required parameters
    addressPrefixes: [
      '10.0.0.0/16'
    ]
    name: 'vnet-demo-dev'
    // Non-required parameters
    location: 'uksouth'

    subnets: [
      {
        name: 'aks-subnet'
        addressPrefix: '10.0.1.0/24'
      }
      {
        name: 'pod-subnet'
        addressPrefix: '10.0.2.0/24'
      }
    ]

    diagnosticSettings: [
      {
        name: 'vnet-diag'
        workspaceResourceId: workspace.id
        logCategoriesAndGroups: [
          {
            categoryGroup: 'allLogs'
            enabled: true
          }
        ]
        metricCategories: [
          {
            category: 'AllMetrics'
            enabled: true
          }
        ]
      }
    ]
  }
}
