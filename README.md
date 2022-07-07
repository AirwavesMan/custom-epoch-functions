# custom-epoch-functions for Epoch 1.0.7

For the most scripts you need a custom compiles.sqf, variables.sqf, fn_selfActions.sqf and configVariables.sqf. Here you learn how to create them.

# Index:
 
* [compiles](https://github.com/AirwavesMan/custom-epoch-functions#compiles)
* [variables](https://github.com/AirwavesMan/custom-epoch-functions#variables)
* [fn_selfActions](https://github.com/AirwavesMan/custom-epoch-functions#fn_selfActions)
* [configVariables](https://github.com/AirwavesMan/custom-epoch-functions#configVariables)
* [example](https://github.com/AirwavesMan/custom-epoch-functions#example)

# compiles

Open init.sqf in your missionfolder and search the following line:


	call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\compiles.sqf";


Add directly under this line:


	call compile preprocessFileLineNumbers "dayz_code\init\compiles.sqf";


So it looks like that:


	call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\compiles.sqf";
	call compile preprocessFileLineNumbers "dayz_code\init\compiles.sqf";


Now you have to create the acutal compiles.sqf. Make a new folder in your missionfolder called dayz_code and create in the folder dayz_code a new folder called init. so you have this structure:


	dayz_code\init


Enter the init folder now and create a file called: 


	compiles.sqf


Open your compiles.sqf and add this:


	if (isServer) then {
		diag_log "Loading custom server compiles";
	};

	if (!isDedicated) then {
		diag_log "Loading custom client compiles";
	};

	
Save and you have created a custom compiles.

# variables

Open init.sqf in your missionfolder and search the following line:


	call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\variables.sqf";


Add directly under this line:


	call compile preprocessFileLineNumbers "dayz_code\init\variables.sqf";


So it looks like that:


	call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\variables.sqf";
	call compile preprocessFileLineNumbers "dayz_code\init\variables.sqf";


You have already created the folder dayz_code and init. So enter the init folder and create a file called: 


	variables.sqf


Open your variables.sqf and add this:


	if (isServer) then {
		diag_log "Loading custom server variables";
	};

	if (!isDedicated) then {
		diag_log "Loading custom client variables";
	};

	
Save and you have created a custom variables.sqf.

# fn_selfActions

Open your custom compiles and search for:


	if (!isDedicated) then {
		diag_log "Loading custom client variables";
	};

	
Add this line to your custom compiles so it looks like this:


	if (!isDedicated) then {
		diag_log "Loading custom client compiles";

		fnc_usec_selfActions = compile preprocessFileLineNumbers "dayz_code\compile\fn_selfActions.sqf";
	};


Now you have to create a folder called compile in the folder dayz_code. If you have done this you are ready to put the fn_selfActions.sqf into that folder.
Take the fn_selfActions.sqf from this repo and it into the folder called compile and you are done.

# configVariables

Open init.sqf in your missionfolder and search the following line:


	#include "\z\addons\dayz_code\configVariables.sqf"


Add directly under this line:


	#include "dayz_code\configVariables.sqf"


So it looks like that:


	#include "\z\addons\dayz_code\configVariables.sqf"
	#include "dayz_code\configVariables.sqf"


Enter the dayz_code folder and create a file called: 


	configVariables.sqf


Open your configVariables.sqf and add this:


	if (isServer) then {
		diag_log "Loading custom server configVariables";
	};

	if (!isDedicated) then {
		diag_log "Loading custom client configVariables";
	};

	
Save and you have created a custom configVariables.sqf.

# example

This repo has an example for all those functions you can use. It contains a custom compiles.sqf, variables.sqf, fn_selfActions.sqf, configVariables.sqf




