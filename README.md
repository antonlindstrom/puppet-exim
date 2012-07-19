# Puppet Exim4 module

This module is very ad hoc and needs a lot of work. The main usage is to quickly spin up an MTA on your nodes.

In the future I would like to make this module a bit more configurable. I think the implementations will come as needed.

### Usage

    include exim

This will install a basic exim SMTP on the node.

Edit the default alias of root by running:

    include exim

    class { 'exim::aliases':
      mailaddress => 'you@yourcompany.com',
    }

## Testing

    gem install bundler
    bundle install
    bundle exec rake

## Contribute
Send pull request and add tests. Make sure all tests pass (modify if you need) and make sure it's style-guide compliant.
