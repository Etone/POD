# POD
Plattform for Orchestation and Deployment - A modern Cloud Plattform based on Open Source technology

## Goal
POD is a showcase of modern approaches to Automation, CICD and Cloud development. The development is done to show, explain as well as dig deeper into different technologies and the cloud native landscape. POD is not meant as a competition for existing platforms such as VMware Tanzu Application Platfrom, but rather as a learning resource and a showcase of how to integrate your own applications with different Open source technologies.

## Currently integrated technologies
Currenlty POD is in a conceptual phase. There is no integrated technology, but some initial ideas are collected. The current plan includes the following products

- [Terraform](https://www.terraform.io/): To deploy environments
- [Tekton](https://tekton.dev/): Cloud native CICD to build, test and deliver artifacts to deploy to environments
- [ArgoCD](https://argoproj.github.io/cd/): GitOps operator to deploy artifacts and manage different environments declaritively
- [Crossplane](https://www.crossplane.io/): For applications to manage Cloud resources without the need to use Terraform

Maybe at some point in the future more technologies will be integrated.
