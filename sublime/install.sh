#!/bin/bash
current_dir=$PWD
source_js_console_log_snippet="./JS_console_log.sublime-snippet"
source_js_console_log_snippet2="./JS_console_log.sublime-snippet2"
destination_js_console_log_snippet="/Users/$USER/Library/Application\ Support/Sublime\ Text\ 2/Packages/User/JS_console_log.sublime-snippet"

if [ -f "$destination_js_console_log_snippet" ]
	then
	echo "JS_console_log.sublime-snippet already installed"
else
	echo "installing $source_js_console_log_snippet to $destination_js_console_log_snippet"
	# cp $source_js_console_log_snippet $destination_js_console_log_snippet
	ln $source_js_console_log_snippet $source_js_console_log_snippet2
fi