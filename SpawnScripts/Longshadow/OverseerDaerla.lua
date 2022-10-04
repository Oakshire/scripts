--[[
    Script Name    : SpawnScripts/Longshadow/OverseerDaerla.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.02 06:10:41
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
        local choice = MakeRandomInt(1,2)
	    if choice == 1 then
        PlayFlavor(NPC,"voiceover/english/overseer_daerla/fprt_hood05/qst_overseer_daerla_callout1_1b99f97d.mp3","Begone, you filthy commoner!  I have important work to do.","stare",850117394,1406850605,Spawn)
        elseif choice == 2 then
        PlayFlavor(NPC,"voiceover/english/overseer_daerla/fprt_hood05/qst_overseer_daerla_callout2_8e8f4739.mp3","All of you lowly refugees are to speak with me at once!","sniff",2064397815,2852618419,Spawn)
    end
	if GetQuestStep(Spawn, 5758)==2 then
	    SetStepComplete(Spawn, 5758,2)
	end
end

function respawn(NPC)
	spawn(NPC)
end