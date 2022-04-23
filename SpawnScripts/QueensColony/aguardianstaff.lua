--[[
    Script Name    : SpawnScripts/QueensColony/aguardianstaff.lua
    Script Author  : Premierio015
    Script Date    : 2020.05.10 02:05:21
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetInvulnerable(NPC)
		SetLuaBrain(NPC)
	SetBrainTick(NPC, 500)
	Think(NPC)        
end

function Think(NPC)
	local mostHated = GetMostHated(NPC)
	if mostHated ~= nil then
--[[ Say(NPC, "Has most hated") --]]
		aggro(NPC, mostHated)
	end
end


function aggro(NPC, Spawn)
--[[ Say(NPC, "In aggro()") --]]
	if GetTempVariable(NPC, "CASTING") ~= "True" then
--[[ Say(NPC, "Casting spell") --]]
		SetTempVariable(NPC, "CASTING", "True")
		CastSpell(Spawn, 210018, 1, NPC)
		AddTimer(NPC, 1610, "FinishedCasting")
	end
end
 
 
 function FinishedCasting(NPC)
	SetTempVariable(NPC, "CASTING", "False")
end

function killed(NPC, Spawn)
	local zone = GetZone(NPC)
		local Oofala = GetSpawnByLocationID(zone, 1584877)
		PlayFlavor(Oofala, "voiceover/english/tutorial_revamp/sorcerer_oofala/tutorial_island02_revamp/quest/citizenship_sorcerer_oofala_staffkill_5b312f60.mp3", "Ha! Did you see that?", "chuckle", 3419630960, 667923165)
end

function respawn(NPC)
         spawn(NPC)
end

