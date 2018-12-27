// Change the path in the next line to your top-level working directory
cd "../"

foreach doc in pipeline ontrack hs_grad enrollment persistence {

	// Run webdoc - markdown
	webdoc do "programs\college_going_`doc'_webdoc.do", cmdlog logall
	webdoc strip "programs\college_going_`doc'_webdoc.do" "programs\college_going_`doc'.do", replace

	// Convert markdown to html
	shell pandoc "docs\college_going_`doc'.md" -s -o "docs\college_going_`doc'.html"
	
	// Zip individual files for distribution
	cd "programs"
	zipfile "college_going_`doc'.do", saving("college_going_`doc'.zip", replace)
	cd ".."
}
