--[[
    Script Name    : SpawnScripts/IsleRefuge1/GuttertoothWarTotem.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.06 02:09:14
    Script Purpose : 
                   : 
--]]
local Healing = true

function spawn(NPC)
	-- set the calls to the ai as there is no ai
	SetLuaBrain(NPC)
	SetBrainTick(NPC, 600000)
	-- give the spawn a crap load of hp so we can't one hit kill
	SetHP(NPC, 1000000)
end

function casted_on(NPC, Spawn, Message)
    if Message == "Smite" then
        SpawnSet(NPC,"visual_state",3120)
    Healing = false
    SetHP(NPC, GetHP(NPC)*0.5)
    end
end

function respawn(NPC)
	spawn(NPC)
end


function Think(NPC,Target)
	-- no ai so won't attack
	return
end

function healthchanged(NPC, Spawn)
	-- insta heal so should be impossible to kill without the /kill command
if Healing == true then
	SetHP(NPC, GetMaxHP(NPC))
end
end