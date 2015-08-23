#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys
import re
import subprocess
import tempfile
import fileinput
import shlex
import shutil
from os import path,remove,fdopen

### 引数チェック

if len(sys.argv) < 1:
	print( "usage: " + vbox_operation.py + " operation_mode [option]" )
	print( "operation_mode: [start | stop] )
else:
    operation_mode = sys.argv[1]


