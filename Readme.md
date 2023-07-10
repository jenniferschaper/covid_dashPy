# Adaptation of CDC's All-Cause Excess Mortality Dashboard

This repo uses CDC data on excess mortality (generated to estimate the impacts of COVID-19) as an exercise in quickly building and deploying interactive data visualizations to the web, because these are the cornerstone of exploratory data analysis.

csv from: https://data.cdc.gov/api/views/xkkf-xrst/rows.csv?accessType=DOWNLOAD&bom=true&format=true%20target=

## Core technologies

The following frameworks and services are used:

* Free, curated data from the CDC
* Python
* Pandas
* Plotly/Dash (Flask + React)
* Git

## Setup (Mac)


gunicorn setup


### A. Install Docker Desktop

https://docs.docker.com/desktop/install/mac-install/

### B. Install Git CLI

https://youtu.be/9LQhwETCdwY

### C. Clone this repository

First, open terminal on your mac. Then, type the following:

	cd ~
	mkdir code
	cd code
	git clone https://github.com/JohnMulligan/covid_dashPy
	cd covid_dashPy

### D. Build and run this container

First, make sure that Docker Desktop is running. Then type the following into your terminal:

	docker build . -t covidpy
	docker run -p 0.0.0.0:8050:8050 covidpy

Open a browser and go to this address: ```0.0.0.0:8050```

You should see the interactive app.

## Running the applications in this repo

Theis application is a single-page app rendered in React on top of Flask. Plotly is truly excellent when you want to quickly make a dataset visually interactive. The curve is a steep one as you ask for more functionality, FYI.

app.py: this application shows

1. for the weeks since January 1, 2020:
1. A multi-select geographic heatmap ("choropleth")
	1. of the United States
	1. showing the percentage of weeks that rose above the 95% CI upper bound predicted mortality for that state based on historical data
1. The number of people who
	1. Were expected to die in any state or combination of states
	1. As selected in the choropleth
	1. And, if only one state or the entire US is selected, it flags the exceptionally high weeks with an "x"
