# TASKS

1. change default ssh port to {{ variable }} (use lineinfile module)
2. restart ssh server
3. change OpenSSH profile for UFW to reflect {{ variable }} port
4. enable UFW (may need to reload app profile)
5. ~~install fish and vim~~
6. ~~create sudoer alan with default shell fish (add alan to group "admin")~~
7. `curl -L http://get.oh-my.fish | fish` for alan
8. install zish theme for oh-my-fish for alan
9. install apache
  - if production, install letsencrypt and setup domain
10. install python3-pip
11. upgrade pip with pip
12. install ansible django ipython jupyter matplotlib nltk numpy scipy with pip
13. enable latest stable repo for R
  - add `deb https://https://vps.fmvz.usp.br/CRAN/bin/linux/ubuntu zesty/` to /etc/apt/sources.list
  - add Michael Rutter's GPG key `apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9`
  - update
14. install r-base
15. enable julia repo: `add-apt-repository ppa:staticfloat/juliareleases`
16. install julia
17. install libcurl4-openssl-dev libssl-dev
18. install R and Julia kernels for Jupyter
  - for Julia: `Pkg.add("IJulia")` (instructions [here](https://github.com/JuliaLang/IJulia.jl]))
  - for R: (instructions [here](https://github.com/IRkernel/IRkernel))
19. set up Jupyter notebook server (relevant info [here](http://jupyter-notebook.readthedocs.io/en/latest/public_server.html))
  - create user `jupyter`
  - set up password for jupyter notebook (prompt user)
  -
