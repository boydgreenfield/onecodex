test:
	py.test -W ignore::DeprecationWarning --ignore tests/test_minimal.py tests/
	@echo "Successfully passed all tests (one environment only, use tox to full suite)."

lint:
	flake8 onecodex/
	flake8 tests/
	black --check -l 100 --exclude vendored/* onecodex/ tests/
	@echo "Successfully linted all files."

coverage:
	py.test -W ignore::DeprecationWarning --cov-report=term-missing --cov=onecodex --ignore tests/test_minimal.py tests/

coveragehtml:
	py.test -W ignore::DeprecationWarning --cov-report=html --cov=onecodex --ignore tests/test_minimal.py tests/

install:
	python setup.py install
