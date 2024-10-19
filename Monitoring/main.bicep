module workspace 'br/public:avm/res/operational-insights/workspace:0.7.0' = {
  name: 'workspaceDeployment'
  params: {
    // Required parameters
    name: 'la-workspace-dev'
    // Non-required parameters
    dailyQuotaGb: 10
    publicNetworkAccessForIngestion: 'Disabled'
    publicNetworkAccessForQuery: 'Disabled'
    tags: {
      Environment: 'Dev'
      Role: 'Demo'
    }
    useResourcePermissions: true
  }
}
