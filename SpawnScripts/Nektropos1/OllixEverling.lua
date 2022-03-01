--[[
	Script Name		:	SpawnScripts/Nektropos1/OllixEverling.lua
	Script Purpose	:	
	Script Author	:	smash
	Script Date		:	9/12/2016
	Script Notes	:	
--]]

function spawn(NPC)
end

function hailed(NPC, Spawn)
	if GetTempVariable(NPC, "talking") ~= "true" then
		StartDialogLoop(NPC, Spawn)
	end
end

function StartDialogLoop(NPC, Spawn)
	SetTempVariable(NPC, "talking", "true")
	Say(NPC, "Ah, you've managed to kill my host.")
	AddTimer(NPC, 3500, "Dialog2")
end

function Dialog2(NPC)
	Say(NPC, "She was just a mortal coil I used to bring myself back.")
	AddTimer(NPC, 3500, "Dialog3")
end

function Dialog3(NPC)
	Say(NPC, "Now that I have returned to my father's castle, I no longer need her.")
	AddTimer(NPC, 3500, "Dialog4")
end

function Dialog4(NPC)
	Say(NPC, "However, she was useful in luring other foolish 'heroes' down here to be used by us.")
	AddTimer(NPC, 3500, "Dialog5")
end

function Dialog5(NPC)
	Say(NPC, "Now you can either do it for me and kill yourselves,")
	AddTimer(NPC, 3500, "Dialog6")
end

function Dialog6(NPC)
	Say(NPC, "or you can let me have some fun.")
	AddTimer(NPC, 3000, "TriggerAttackable")
end

function TriggerAttackable(NPC)
	SpawnSet(NPC, "attackable", "1")
	SpawnSet(NPC, "show_level", "1")
end