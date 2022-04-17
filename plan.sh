#!/bin/bash

terraform -chdir=infra init
terraform -chdir=infra plan -out=output
