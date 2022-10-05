--[[
    Script Name    : SpawnScripts/Baubbleshire/Leon.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.20 06:07:01
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
        local choice = MakeRandomInt(1,2)
	    if choice == 1 then
        PlayFlavor(NPC,"voiceover/english/steward_leon/qey_village06/qst_steward_leon_callout1_454cfdb9.mp3","This day would be perfect if, only I had a cool mug of jum-jum.  Oh well.","agree",251868759,1191048205,Spawn)
        elseif choice == 2 then
        PlayFlavor(NPC,"voiceover/english/steward_leon/qey_village06/qst_steward_leon_hail1_374c1914.mp3","This would be a perfect day if I had a cool mug of jum-jum. Mmmmm ... Mmmm ... I must get some jum-jum! Sorry, friend. I can't talk now!","smile",3110431219,3470484865,Spawn)
end
if GetRace(Spawn)== 7 or GetRace(Spawn)== 5 then
    if HasQuest(Spawn,5717) and GetQuestStep(Spawn,5717,2) then
        SetStepComplete(Spawn,5717,2)
    end
end

end


function respawn(NPC)
	spawn(NPC)
end