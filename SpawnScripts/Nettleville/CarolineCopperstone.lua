--[[
    Script Name    : SpawnScripts/Nettleville/CarolineCopperstone.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.25 05:06:38
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
if GetFactionAmount(Spawn,11)<0 then
    PlayFlavor(NPC,"","","no",0,0,Spawn)
else    
	FaceTarget(NPC, Spawn)
PlayFlavor(NPC,"voiceover/english/banker_caroline_copperstone/qey_village01/banker_carolyn_copperstone001.mp3","Welcome friend.  How can we at the Qeynos Exchange help you?","hello",3418604126,1802065171,Spawn)
end
end

function respawn(NPC)
	spawn(NPC)
end