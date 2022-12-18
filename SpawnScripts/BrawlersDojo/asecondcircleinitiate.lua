--[[
    Script Name    : SpawnScripts/BrawlersDojo/asecondcircleinitiate.lua
    Script Author  : Dorbin
    Script Date    : 2022.12.18 04:12:46
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    AddTimer(NPC, math.random(2000,5000), "EmoteLoop")
    SetTempVariable(NPC,"Talking","false")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/dwarf/dwarf_eco_good_1_hail_gm_bd8ccf81.mp3", "Ale may be the life's blood, but fighting is the soul my existence!", "nod", 4220338619, 1417901850, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end


function EmoteLoop(NPC)
if GetTempVariable(NPC,"Talking")== "false"then
  SpawnSet(NPC, "action_state", 0)
    local zone = GetZone(NPC)
    local dummy = GetSpawnByLocationID(zone,133781317)
    PlayAnimation(NPC,(MakeRandomInt(1243,1245)))
    SpawnSet(dummy, "visual_state", 2083)
end
    AddTimer(NPC, 2550, "Idle")
    end
    
 function Idle(NPC)
    local zone = GetZone(NPC)
    local dummy = GetSpawnByLocationID(zone,133781317)
 if GetTempVariable(NPC,"Talking")== "false"then
    SpawnSet(NPC, "action_state", 267)
    PlayAnimation(NPC, 267) 
end
    AddTimer(NPC,1000,"resetdummy",1)
    local timer = MakeRandomInt(1500,3500)
    AddTimer(NPC, timer, "EmoteLoop")

end

function resetdummy(NPC)
    local zone = GetZone(NPC)
    local dummy = GetSpawnByLocationID(zone,133781308)
    SpawnSet(dummy, "visual_state", 0)
end   
           
        