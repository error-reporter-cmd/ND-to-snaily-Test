local alert = { header = 'Cad-Alert', content = 'this character has been registered To the MSRP cad system\n Please notify Development Operations if this was done in error \n Please ensure you set your Haircolor eyecolor and address as sadly we cannot currantly', centered = true, cancel = true, }

AddEventHandler("ND:characterLoaded", function(char)
    if not (exports['bryan_snaily']:IsCitizenRegistered(char.firstname, char.lastname)) then
    	createchar(char)
        TriggerClientEvent('ox_lib:alertDialog', char.source, alert)
    else
    end
end)

function createchar (c)
	print (c.firstname, c.lastname, c.dob, c.gender, c.metadata.ethnicity)
	exports['bryan_snaily']:InsertNewCitizen(c.firstname, c.lastname, c.dob)
end

--Testing code 
RegisterCommand("hunter-debug", function() 
    exports['bryan_snaily']:InsertNewCitizen("Development", "Operations", "2001-01-01", "Male", "Caucasian")
end)
