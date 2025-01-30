This repo reproduces a bug in the Mocha test framework.
The bug is that failing to include a library in javascript will cause mocha to throw a "circular dependency" error when it should just throw a "module not found" error.

To see the bug, run source commands.sh with bash

If you see 'ERR_REQUIRE_CYCLE_MODULE' then the bug has been reproduced.