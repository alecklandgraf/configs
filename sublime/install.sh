#!/bin/bash
source_js_console_log_snippet="./JS_console_log.sublime-snippet"
destination_js_console_log_snippet="/Users/alandgraf/Library/Application Support/Sublime Text 2/Packages/User/JS_console_log.sublime-snippet"

if [ -f $destination_js_console_log_snippet ]
	then
	echo "JS_console_log.sublime-snippet already installed"
else
	ln $source_js_console_log_snippet $destination_js_console_log_snippet
fi