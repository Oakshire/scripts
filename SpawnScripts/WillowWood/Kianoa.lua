--[[
    Script Name    : SpawnScripts/WillowWood/Kianoa.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.20 06:07:13
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
        local choice = MakeRandomInt(1,2)
	    if choice == 1 then
        PlayFlavor(NPC,"voiceover/english/steward_kianoa/qey_village05/qst_steward_kianoa_callout1_f727a316.mp3","May the winds of fortune be a cool breeze on your cheek.","nod",809106503,4269106476,Spawn)
        elseif choice == 2 then
        PlayFlavor(NPC,"voiceover/english/steward_kianoa/qey_village05/qst_steward_kianoa_hail1_9a0c4d73.mp3","May the winds of fortune be a cool breeze on your cheek. Farewell, friend.","hello",3463982245,3183275654,Spawn)
end
if GetRace(Spawn)== 15 or GetRace(Spawn)== 6 or GetRace(Spawn)== 16 then
    if HasQuest(Spawn,5717) and GetQuestStep(Spawn,5717)==2 then
        SetStepComplete(Spawn,5717,2)
    end
end
end

function respawn(NPC)
	spawn(NPC)
end