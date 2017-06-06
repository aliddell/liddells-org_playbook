# WHAT THIS PLAYBOOK DOES

This playbook sets up a poor man's R, Python, and Julia development server on Ubuntu 16.04 LTS.
It installs and updates the Python 3 package `pip`, which it then uses to install the following Python libraries:
  - django
  - jupyter
  - ipython
  - numpy
  - scipy
  - matplotlib
  - pandas
  - scikit-learn
  - nltk
Then it enables the latest stable repos for both the R and Julia programming languages and installs those respective runtimes.
After that, it installs Jupyter Notebook kernels for each of these.
Finally, it sets up a password-protected Jupyter Notebook server and proxies it behind an Apache VirtualHost at the subdomain `data.`.
(Most of my info for the Jupyter Notebook server was taken from [here](https://jupyter-notebook.readthedocs.io/en/latest/public_server.html).)
It uses LetsEncrypt to handle creating SSL certificates on production sites (i.e., sites accessible to the public Internet with their own domain names).
On testing sites, it uses the snakeoil certificate gotten by installing the `ssl-cert` package through `apt`.

# USING THIS PLAYBOOK

I don't recommend anyone using this playbook, since it's mostly here for my own use, but if you must, here's what you do (you should already be pretty familiar with how Ansible works):

You should go through each of the roles here and find the vars which are encrypted with [Vault](https://docs.ansible.com/ansible/playbooks_vault.html), then encrypt the corresponding variables you'll want to use (SHA1 hashes, email addresses, &c.) and replace those.
You should also go and replace subdomains and system user names where appropriate.
If you want to go ahead and install [other Jupyter kernels](https://github.com/jupyter/jupyter/wiki/Jupyter-kernels), you should fork this repo (you should fork this repo anyway if you're going to use it at all) and then submit a pull request.

# TODO

  - Proxy Django behind a subdomain (`alan.`?) and start building out an expo site
  - Install SageMath and Haskell kernels (maybe)
