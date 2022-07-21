--[[
    Script Name    : SpawnScripts/Graystone/StewardSal.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.20 04:07:00
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC,"voiceover/english/steward_sal/qey_village03/qst_steward_sal_callout1_46762b99.mp3","No time for talkin', friend!  I gotta keep an eye out for new refugees.","no",1387716528,1390458474,Spawn)
end

function respawn(NPC)
	spawn(NPC)
end