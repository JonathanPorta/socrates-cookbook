#
# Cookbook Name::socrates
# Recipe::autochef
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
#
# Cookbook Name::monitoring
# Recipe::autochef
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

bash 'ops_tools' do
  code <<-EOH
    dnf install -y jq https://github.com/jonathanporta/ops/releases/download/0.0.4/ops-0.0.4-local.git860078f.x86_64.rpm
    EOH
  ignore_failure false
end

bash 'socrates-cookbook' do
  code <<-EOH
    dnf install -y $(gh latest jonathanporta/socrates-cookbook --download-url)
    EOH
  ignore_failure false
end
