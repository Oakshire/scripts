--[[
    Script Name    : SpawnScripts/Stonestair/OverseerMelkia.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.02 06:10:18
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
        local choice = MakeRandomInt(1,2)
	    if choice == 1 then
        PlayFlavor(NPC,"voiceover/english/overseer_melkia/fprt_hood02/qst_overseer_melkia_callout1_8dc5a24e.mp3","You disgusting little creature!  How dare you address me?","lookaway",256372118,1746198863,Spawn)
        elseif choice == 2 then
        PlayFlavor(NPC,"voiceover/english/overseer_melkia/fprt_hood02/qst_overseer_melkia_callout2_e5f9b75f.mp3","New refugees are required to speak with me immediately!","nod",566743467,1453719370,Spawn)
    end
	if GetQuestStep(Spawn, 5758)==2 then
	    SetStepComplete(Spawn, 5758,2)
	end
end

function respawn(NPC)
	spawn(NPC)
end