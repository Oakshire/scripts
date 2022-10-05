--[[
    Script Name    : SpawnScripts/Nettleville/StewardLoralei.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.20 05:07:43
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
        local choice = MakeRandomInt(1,2)
	    if choice == 1 then
        PlayFlavor(NPC,"voiceover/english/steward_loralei/qey_village01/qst_steward_loralei_callout1_34b39557.mp3","Good day to you, friend.  I wish you good luck today!","hello",2416972639,966576334,Spawn)
        elseif choice == 2 then
        PlayFlavor(NPC,"voiceover/english/steward_loralei/qey_village01/qst_steward_loralei_hail1_7d12d980.mp3","Good day to you, friend.  Good luck on your journey.","nod",749070938,2751400419,Spawn)
end
if GetRace(Spawn)== 9 or GetRace(Spawn)== 11 then
    if HasQuest(Spawn,5717) and GetQuestStep(Spawn,5717)==2 then
        SetStepComplete(Spawn,5717,2)
    end
end
end

function respawn(NPC)
	spawn(NPC)
end