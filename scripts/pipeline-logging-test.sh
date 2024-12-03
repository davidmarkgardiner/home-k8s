#!/bin/bash

# Test different message types
echo "##vso[task.logissue type=warning;sourcepath=src/app.js;linenumber=42;columnnumber=5;code=WARN001;]Warning: Deprecated function used"

echo "##vso[task.logissue type=error;sourcepath=src/config.yaml;linenumber=10;columnnumber=1;code=ERR001;]Error: Invalid configuration detected"

# Test task progress commands
echo "##vso[task.setprogress value=0;]Starting tests..."
sleep 1

echo "##vso[task.setprogress value=50;]Halfway through..."
sleep 1

echo "##vso[task.setprogress value=100;]Tests completed"

# Test task result commands
echo "##vso[task.complete result=SucceededWithIssues;]Task completed with some warnings"

# Test variable commands
echo "##vso[task.setvariable variable=TestStatus;]Passed"
echo "##vso[task.setvariable variable=TestCount;]42"

# Test section commands
echo "##[section]Starting Test Section"
echo "Running tests..."
echo "##[section]Ending Test Section"

# Test different debug levels
echo "##[command]Running command: npm test"
echo "##[debug]Debug information: test environment initialized"
echo "##[warning]Warning: Test coverage below threshold"
echo "##[error]Error: Test failed unexpectedly"