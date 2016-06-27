#!/usr/bin/env bash
cd $(dirname `which $0`)
FOLDER=$(pwd)

### does the same as the jenkins job
TESTSUITE='blueberry' BROWSER='firefox' $FOLDER/execute_compose_test.sh $@ &
TESTSUITE='caramel' $FOLDER/execute_compose_test.sh $@ &
TESTSUITE='chocolate' BROWSER='firefox' $FOLDER/execute_compose_test.sh $@ &
TESTSUITE='order-pdf' $FOLDER/execute_compose_test.sh $@ &
wait
exit $?