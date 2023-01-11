+++
title = "SRVC"
+++

<h2>SRVC Getting Started</h2>
Sysrev Version Control is an open source document review system. Every SRVC review is a git repo made up of review stages. Each stage is a script that can be written in any language.  

1. Install `sr` with [homebrew](https://brew.sh/):
   ```plaintext
   $ brew install insilica/srvc/srvc
   ```
2. Clone the [srvc-hello](https://github.com/sysrev/srvc-hello) example review
   ```plaintext
   $ git clone https://github.com/sysrev/srvc-hello.git
   $ cd srvc-hello
   ```
3. Start a command line review:
   ```plaintext
   $ sr review simple
   ```

Next, learn about [**review configuration**](/docs/sr.yaml) 
