if (isServer) then {
	diag_log "Loading custom server configVariables";
};

if (!isDedicated) then {
	diag_log "Loading custom client configVariables";
};