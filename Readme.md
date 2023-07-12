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

## Setup

### A. Install Anaconda / Jupyter Notebooks

	Download and install [Anaconda](http://continuum.io/downloads).
	Use all of the defaults for installation except make sure to check Make Anaconda the default Python.

### B. Install Git

Mac:

* Download and run [the installer](https://git-scm.com/downloads)
* Open up a terminal and run ```git clone https://github.com/JohnMulligan/covid_dashPy.git```
	* If prompted, follow the instructions to install command line utilities / xcode
	* If it just works, then you're good to go! Remove that folder with ```rm -rf covid_dashPy```

Windows:

* Download and run [the installer](https://gitforwindows.org/)

### C. Set up git w/ GitHub

Create a GitHub account and log in.

These instructions are from https://swcarpentry.github.io/git-novice/07-github.html#ssh-background-and-setup (thanks, SWC!)

Create a directory for your keys

	cd ~/.ssh

If you get an error, create that directory and then move into it

	mkdir ~/.ssh
	cd ~/.ssh

Create a pair of ssh keys, and name the keys ```githubkeys```. Don't use a passphrase.

	ssh-keygen

This creates 2 keys -- a public and a private key. NEVER share your private key.

Inspect the contents of your public key

	cat githubkeys.pub

And copy the output to your clipboard. Now, going to GitHub.com, click on your profile icon in the top right corner to get the drop-down menu. Click “Settings,” then on the settings page, click “SSH and GPG keys,” on the left side “Account settings” menu. Click the “New SSH key” button on the right side. Now, you can add a title of your choice, paste your SSH key into the field, and click the “Add SSH key” to complete the setup.

Then, navigate to this repository, and click on "Fork" in the upper right to make a copy of it in your own account.

* Original repo: ```https://github.com/JohnMulligan/covid_dashPy```
* Your repo: ```https://github.com/{{YOURUSERNAME}}/covid_dashPy```

In your repository, click on the green "Code" button in the top right, and select the SSH option. Then, copy that URL.

Now, go back to your terminal.

1. Load your keys ```ssh-add githubkeys```
1. Go to your home directory ```cd ~```
1. Create a directory named "code" ```mkdir code```
1. Navigate into it ```cd code```
1. Pull down your fork of the repository ```git clone git@github.com:{{YOURUSERNAME}}/covid_dashPy.git```
1. Navigate into that folder ```cd covid_dashPy```
1. And then take a look around ``` ls -lah .```

You should now see the contents of this repository listed in your terminal.

### D. Setting up your environment

1. In your new repository folder, launch a virtual environment ```python -m venv venv```
1. Activate that virtual environment
	1. Windows ```. venv/Scripts/activate```
	1. Mac ```source venv/bin/activate```
1. Install your Python requirements ```pip3 install -r requirements.txt```
1. Test that the app works ```python application.py```


## NEXT TO INCLUDE IN THIS LESSON PLAN

1. The Notebooks portion so they can
	1. poke at the data interactively and
	1. learn about dataframes
1. Installation of Visual Studio or BBEdit
1. The Git push & PR section, and accompanying CI/CD lesson