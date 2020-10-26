# MonoRepo for a GCP Demo Org

This repo is an example of how a mono-repo could be set up and integrated with Terraform Cloud. 

**On the GitHub Repo Side**:

The idea is to structure the repo such that there are organization **global** components, **country** components and **line of business** components.

In addition to this structure, we have branch protection turned on such that changes can only be made by way of a pull request.

**On the Terraform Cloud Side**:

We will map sub-directories of this repo to workspaces accordingly. There will be a work space for a global VPC called `lhq-corp-network` mapped to [./global/corp-glb-svpc]. There will be a country level workspace called `lhq-ca-network` that maps to [./country/ca]. Lastly, for line of business we have a workspace named `lhq-lob-sprockets` that maps to [./lob/sprockets].

## The Flow

We have created links between the workspaces such that:

* `lhq-corp-network` creates an output for the VPC Network name the organization is intended to use.
* `lhq-ca-network` creates subnets specifically for Canada, within the VPC referenced the output of `lhq-corp-network`
* `lhq-lob-sprockets` provisions a GCE instance, on the subnet provisioned by `lhq-ca-network`

We still start with a provisioned state where all of the elements exist. We will then proceed to make changes to various components, and show what happens when a Pull Request is made. The important thing to illustrate is what happens when something destructive happens and show how when the tests run as part of the Pull Request, it will show them fail and tie back to the Plan that runs in TF Cloud.

Suggested demo paths, show making a simple change, non-destructive. Show destructive, delete the subnet from the ca directory, delete the vpc from the corp directory. See how a change in a different workspace can impact another workspace by linking workspaces together.