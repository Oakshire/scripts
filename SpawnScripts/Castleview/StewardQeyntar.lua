--[[
    Script Name    : SpawnScripts/Castleview/StewardQeyntar.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.20 04:07:07
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
        local choice = MakeRandomInt(1,2)
	    if choice == 1 then
        PlayFlavor(NPC,"voiceover/english/steward_quyntar/qey_village04/qst_steward_quyntar_callout1_e7d4a59e.mp3","I trust you find the day to your liking.  Safe travels to you.","hello",704563926,296687769,Spawn)
        elseif choice == 2 then
        PlayFlavor(NPC,"voiceover/english/steward_quyntar/qey_village04/qst_steward_quyntar_hail1_a1370939.mp3","I trust you are enjoying this splendid day.  Safe travels to you.","nod",1077432596,453293758,Spawn)
end
if GetRace(Spawn)== 4 or GetRace(Spawn)== 8 then
    if HasQuest(Spawn,5717) and GetQuestStep(Spawn,5717)==2 then
        SetStepComplete(Spawn,5717,2)
    end
end
end

function respawn(NPC)
	spawn(NPC)
end