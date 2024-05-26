# Provisioning with Packer

This project demonstrates how to create and manage reproducible machine images using Packer and deploy these images on multiple platforms like AWS, GCP, and Azure.

## Project Structure

provisioning-with-packer/
├── .github/
│ └── workflows/
│ └── packer.yml
├── packer/
│ ├── aws/
│ │ ├── aws.pkr.hcl
│ │ └── variables.pkr.hcl
│ ├── gcp/
│ │ ├── gcp.pkr.hcl
│ │ └── variables.pkr.hcl
│ └── azure/
│ ├── azure.pkr.hcl
│ └── variables.pkr.hcl
├── .gitignore
├── README.md


## Usage

1. Clone the repository:
    ```sh
    git clone https://github.com/your-username/provisioning-with-packer.git
    cd provisioning-with-packer
    ```

2. Configure your variables in the `variables.pkr.hcl` files for each platform.

3. Run Packer to build the image on the desired platform. For example, for AWS:
    ```sh
    cd packer/aws
    packer init .
    packer build .
    ```

