#!/bin/bash


# Test ALL THE THINGS

set -e

nosetests                            \
	--with-coverage                  \
	--exe                            \
	--cover-package=ChromeController \
	tests.test_redirects

nosetests                            \
	--with-coverage                  \
	--exe                            \
	--cover-package=ChromeController \
	tests.test_tab_pool

nosetests                            \
	--with-coverage                  \
	--exe                            \
	--cover-package=ChromeController \
	tests.test_simple

	# tests.test_multithreaded
	# --nocapture                \
	# tests.test_waf_bullshit.TestPreemptiveWrapper
	# tests.test_waf_bullshit
	# --with-cprofile \
	# tests.test_simple
	# tests.test_selenium

coverage report --show-missing

coverage erase

