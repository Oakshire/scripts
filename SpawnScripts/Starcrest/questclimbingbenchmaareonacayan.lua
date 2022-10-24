--[[
    Script Name    : SpawnScripts/Starcrest/questclimbingbenchmaareonacayan.lua
    Script Author  : Jabantiz
    Script Date    : 2018.06.14 08:06:20
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetRequiredQuest(NPC,316,1,0,0,1)
    SetRequiredQuest(NPC,321,1,0,0,1)
    SetRequiredQuest(NPC,321,2,0,0,1)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, Message)
	if Message == "Climb the Bench" then
		SetPosition(Spawn, 762.11, -20.38, 315.01, 68.11)
	end
end