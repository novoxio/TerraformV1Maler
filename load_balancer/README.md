<h1>Azure Load Balancer Setup with Terraform</h1>

  <p>This repository provides a Terraform configuration for setting up an Azure Load Balancer for database VMs. The resources defined in this template include:</p>

  <ul>
    <li><strong>Public IP Address</strong> for the load balancer</li>
    <li><strong>Azure Load Balancer</strong> resource</li>
    <li><strong>Backend Pool</strong> for distributing traffic to database VMs</li>
    <li><strong>Health Probe</strong> for monitoring the health of database VMs</li>
    <li><strong>Load Balancer Rule</strong> to route traffic to backend VMs</li>
  </ul>

  <h2>Resources Defined</h2>
  <ul>
    <li><code>azurerm_lb</code>: Azure Load Balancer for distributing traffic to database VMs.</li>
    <li><code>azurerm_public_ip</code>: Static public IP address assigned to the load balancer.</li>
    <li><code>azurerm_lb_backend_address_pool</code>: Backend pool to route traffic to the VMs.</li>
    <li><code>azurerm_lb_probe</code>: Health probe to check the status of backend VMs.</li>
    <li><code>azurerm_lb_rule</code>: Defines the load balancer rule for traffic distribution.</li>
  </ul>

  <h2>Setup</h2>

  <h3>Prerequisites</h3>
  <ul>
    <li>Terraform installed on your system</li>
    <li>Azure account and proper authentication</li>
  </ul>

  <h3>Steps to Deploy</h3>
  <ol>
    <li>Clone this repository.</li>
    <li>Customize the <code>terraform.tfvars</code> file with your Azure resource group and region.</li>
    <li>Run the following commands:
      <pre><code>terraform init        # Initialize the configuration
terraform plan        # Preview the changes
terraform apply       # Apply the configuration to Azure</code></pre>
    </li>
  </ol>

  <h2>Outputs</h2>
  <ul>
    <li><code>db_lb_public_ip</code>: The public IP address assigned to the load balancer.</li>
    <li><code>db_lb_id</code>: The ID of the load balancer resource.</li>
    <li><code>db_lb_backend_pool_id</code>: The ID of the backend pool associated with the load balancer.</li>
  </ul>

  <h2>License</h2>
  <p>This project is licensed under the MIT License.</p>

  <footer>
    <p>&copy; 2024 Azure Load Balancer Setup</p>
  </footer>

</body>
