# custom-epoch-functions for Epoch 1.0.7.1+

Epoch 1.0.7.1 comes from the start a custom compiles.sqf, variables.sqf and configVariables.sqf. Here you learn how to create a custom fn_selfActions.sqf.

# Index:
 
* [fn_selfActions](https://github.com/AirwavesMan/custom-epoch-functions#fn_selfActions)
* [example](https://github.com/AirwavesMan/custom-epoch-functions#example)


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
Take the fn_selfActions.sqf from this repo and add it into the folder called compile and you are done.

# example

This repo has an example for all those functions you can use. It contains a custom compiles.sqf, variables.sqf, fn_selfActions.sqf, configVariables.sqf




