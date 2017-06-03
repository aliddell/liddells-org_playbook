# TASKS

1. change default ssh port to {{ variable }} (use lineinfile module)
2. restart ssh server
3. change OpenSSH profile for UFW to reflect {{ variable }} port
  - these three are harder than they seem, but doable (see [here](https://dmsimard.com/2016/03/15/changing-the-ssh-port-with-ansible/))
4. enable UFW (may need to reload app profile)
5. ~~install fish and vim~~
6. ~~create sudoer alan with default shell fish (add alan to group "admin")~~
  - ~~also generate ssh key~~
7. ~~`curl -L http://get.oh-my.fish | fish` for alan (can't use raw to do this, does not return)~~
8. ~~install zish theme for oh-my-fish for alan~~
9. install apache
  - if production, install letsencrypt and setup domain
10. ~~install python3-pip~~
11. ~~upgrade pip with pip~~
12. install packages with pip
  - django
  - ~~ipython~~
  - ~~jupyter~~
  - ~~matplotlib~~
  - ~~nltk~~
    - ~~`nltk.download("all")`~~
  - ~~numpy~~
  - ~~scipy~~
  - ~~pandas~~
13. ~~enable latest stable repo for R~~
  - ~~add `deb https://vps.fmvz.usp.br/CRAN/bin/linux/ubuntu xenial/` to /etc/apt/sources.list~~
  - ~~add Michael Rutter's GPG key `apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9`~~
  - ~~update~~
14. ~~install r-base~~
15. ~~enable julia repo: `add-apt-repository ppa:staticfloat/juliareleases`~~
16. ~~install julia~~
17. ~~install libcurl4-openssl-dev libssl-dev~~
18. install R and Julia kernels for Jupyter
  - ~~for Julia: `Pkg.add("IJulia")` (instructions [here](https://github.com/JuliaLang/IJulia.jl]))~~
  - for R: (instructions [here](https://github.com/IRkernel/IRkernel))
19. set up Jupyter notebook server (relevant info [here](http://jupyter-notebook.readthedocs.io/en/latest/public_server.html))
  - create user `jupyter` with appropriate permissions for serving up on the web
  - set up password for jupyter notebook (use Vault and template module)
  - create Jupyter UFW profile and enable
  - create systemd service for jupyter-notebook and enable it
