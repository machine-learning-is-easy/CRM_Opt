// SPDX-FileCopyrightText: Copyright (c) Kitware Inc.
// SPDX-License-Identifier: BSD-3-Clause
/* #undef PV_TEST_INIT_COMMAND */
/* #undef PV_TEST_CLEAN_COMMAND */

// host name for the client used when running reverse connect test.
#define PV_TEST_CLIENT "localhost"

// ssh command to connect to remote machine, usually ssh -l kitware dash8
/* #undef PV_SSH_FLAGS */

// shell script to execute server, should contain proper port...
// This line won't be split into smaller arguments
/* #undef PV_SETUP_SCRIPT */

// if defined we use random port numbers for testing (needed for parallel
// tests).
#define PV_TEST_USE_RANDOM_PORTS
