#!/usr/bin/env bash
#
# Creates a file in the $WORK_LOG directory for tracking work

# Exit immediately on error
set -e

# Store the current year, month, and day
current_year=$(date +%Y)
current_month=$(date +%m)
current_day=$(date +%d)

# When $WORK_LOG does not exist, exit with an error
if [[ -z $WORK_LOG ]]; then
    echo ERROR: WORK_LOG is not set as an env variable
    exit 1
fi

# When $WORK_LOG is not a directory, exit with an error
if [[ ! -d "$WORK_LOG" ]]; then
    echo ERROR: WORK_LOG needs to be set as a directory
    exit 1
fi

pushd $WORK_LOG

# When the directory for the year number does not exist, create it
if [[ ! -d "$current_year" ]]; then
    mkdir $current_year
fi

pushd $current_year

# When the directory for the month number does not exist, create it
if [[ ! -d "$current_month" ]]; then
    mkdir $current_month
fi

pushd $current_month

# When the file <year>-<month>-<day>.work-log.md exists, exit with an error
work_log_file="$current_year-$current_month-$current_day.work-log.md"

if [[ -f "$work_log_file" ]]; then
    echo ERROR: $work_log_file already exists
    exit 1
fi

# Create the file <year>-<month>-<day>.work-log.md
touch $work_log_file

echo "$current_year-$current_month-$current_day Work Log" >> $work_log_file
echo "--------------------------------------------------" >> $work_log_file

