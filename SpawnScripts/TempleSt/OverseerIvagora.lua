--[[
    Script Name    : SpawnScripts/TempleSt/OverseerIvagora.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.02 06:10:28
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
        local choice = MakeRandomInt(1,2)
	    if choice == 1 then
        PlayFlavor(NPC,"voiceover/english/overseer_ivagora/fprt_hood03/qst_overseer_ivagora_callout1_7a7c78d2.mp3","I am very important!  You speak to me only when I speak to you!","stare",629512654,4246602300,Spawn)
        elseif choice == 2 then
        PlayFlavor(NPC,"voiceover/english/overseer_ivagora/fprt_hood03/qst_overseer_ivagora_callout2_29d95cf.mp3","Here! Here! Here! Refugees come here!!!","beckon",50468124,3582989183,Spawn)
    end
	if GetQuestStep(Spawn, 5758)==2 then
	    SetStepComplete(Spawn, 5758,2)
	end
end

function respawn(NPC)
	spawn(NPC)
end