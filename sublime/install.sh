#!/bin/bash

source_js_console_log_snippet="./JS_console_log.sublime-snippet"
destination_js_console_log_snippet="/Users/$USER/Library/Application Support/Sublime Text 2/Packages/User/"

if [ -f "$destination_js_console_log_snippet/$source_js_console_log_snippet" ]
	then
	echo "JS_console_log.sublime-snippet already installed"
else
	echo "installing $source_js_console_log_snippet to $destination_js_console_log_snippet"
	ln "$source_js_console_log_snippet" "$destination_js_console_log_snippet"
fi