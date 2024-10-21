# full-aks-setup

A full AKS setup including, well, everything you should need.

# Monitoring

This is found in the [Monitoring](./Monitoring/) folder and should be the first thing that is run. This is because other components may depend on it being present for diagnsotics.

# Networking

This is found in the [Networking](./Network/) folder, and needs to be present before AKS is deployed, as this contains the vnet/subnets referenced in the AKS config.

# AKS 

Lastly you can deploy the [AKS](./AKS/) cluster itself.