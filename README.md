hybrid-web-server
=================

Simple puppet module to demonstrate that a puppet fact can affect web content.

1. Install puppet and git to your CentOS/RHEL/Amazon Linux AMI

    ```
    yum -y install puppet git
    ```

2. Checkout this module

    ```
    git clone https://github.com/tomellis/hybrid-web-server.git /root/puppet
    ```

3. Apply the module

Using a cloud fact set to "eucalyptus":

    ```
    FACTER_cloud=eucalyptus puppet apply -v --modulepath=/root/puppet -e "include web-server::init"
    ```

Using a cloud fact set to "aws":

    ```
    FACTER_cloud=aws puppet apply -v --modulepath=/root/puppet -e "include web-server::init"
    ```
