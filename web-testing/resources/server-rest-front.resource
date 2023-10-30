*** Settings ***
Library                      Browser
Library                      FakerLibrary

*** Variables ***
${BROWSER}                   chromium
${HEADLESS}                  ${false}
${SERVER_REST_FRONT}         https://front.serverest.dev/

*** Keywords ***
Open page
	New Browser              browser=${BROWSER}                headless=${HEADLESS}
	New Context              viewport={'width': 1200, 'height': 800}

Access site
	New Page                 url=${SERVER_REST_FRONT}
