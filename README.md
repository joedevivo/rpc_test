# rpc_test #

Everything you wanted to know about rpc_test but were afraid to ask.

## make rel is a little broken ##

You need to `cp _rel/rpc_test/sys.config _rel/rpc_test/releases/0.0.1/sys.config`

**AND**

open `_rel/rpc_test/releases/0.0.1/vm.args` and replace the cookie with the contents of `~/.erlang.cookie`

## Author(s) ##

* First Last <you@example.net>

## Copyright ##

Copyright (c) 2014 YOU.  All rights reserved.
