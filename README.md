w_haproxy Cookbook
==================

[![Build Status](https://travis-ci.org/haapp/w_haproxy.svg?branch=master)](https://travis-ci.org/haapp/w_haproxy)

Install and configure HAProxy, Keepalived and monit. Expects high availability usecase that 2 HAProxy virtual machine to be configured as master and slave sharing one virtual ip thanks to Keepalived.

Requirements
------------
Cookbook Dependency:
* [haapp/w_common](https://github.com/haapp/w_common) 
* [hw-cookbooks/haproxy](https://github.com/hw-cookbooks/haproxy) 
* [chef-cookbooks/keepalived](https://github.com/chef-cookbooks/keepalived)

Supported Platform:
Ubuntu 14.04, Ubuntu 12.04

Usage
-----
#### w_haproxy::default

Include `w_haproxy` in your node/role's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[w_haproxy]"
  ]
}
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Install reqired gems
```
bundle install
```
4. Write your change
5. Write tests for your change (if applicable)
6. Run the tests, ensuring they all pass
```
bundle exec rspec
bundle exec kithen test
```
7. Submit a Pull Request using Github

License and Authors
-------------------
Authors: 
* Joel Handwell @joelhandwell 
* Full Of Lilies @fulloflilies
