#!/bin/bash

# 
# Color Reference / 
# http://stackoverflow.com/questions/16843382/colored-shell-script-output-library
# 

# Text Reset
RCol='\x1b[0m'    

# Underline           
URed='\x1b[4;31m'
UGr1='\x1b[4;92m'  
UGr2='\x1b[4;32m'  

show_versions () {
  # Node
  NODE_VERSION="node `node --version`"
  
  # Python
  PYTHON_VERSION="python v`python -c 'import sys; print sys.version[:5]'`"
  
  # Ruby
  RUBY_VERSION="`ruby --version | cut -c 1-10 | sed 's/ruby /ruby v/g'`"
  
  echo -e "${UGr1}$NODE_VERSION${RCol} ${UGr2}$PYTHON_VERSION${RCol} ${URed}$RUBY_VERSION${RCol}"
}

show_versions
