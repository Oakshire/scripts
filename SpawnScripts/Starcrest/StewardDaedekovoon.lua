--[[
    Script Name    : SpawnScripts/Starcrest/StewardDaedekovoon.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.20 06:07:48
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
        local choice = MakeRandomInt(1,2)
	    if choice == 1 then
        PlayFlavor(NPC,"voiceover/english/steward_daedeakovoon/qey_village02/qst_steward_daedeakovoon_callout1_cfd05996.mp3","You have much potential.  Be wise and use it to its fullest.","agree",1059310994,1083041509,Spawn)
        elseif choice == 2 then
        PlayFlavor(NPC,"voiceover/english/steward_daedeakovoon/qey_village02/qst_steward_daedeakovoon_multhail2_78a42729.mp3","On behalf of Qeynos, I welcome you, friend.  Your journey is over, and now you are among friends.","bow",1550457164,405052003,Spawn)
end
if GetRace(Spawn)== 9 or GetRace(Spawn)== 3 or GetRace(Spawn)== 20 then
    if HasQuest(Spawn,5717) and GetQuestStep(Spawn,5717)==2 then
        SetStepComplete(Spawn,5717,2)
    end
end

end

function respawn(NPC)
	spawn(NPC)
end