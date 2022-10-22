--[[
    Script Name    : SpawnScripts/BeggarsCourt/OverseerZerrin.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.02 07:10:39
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
        local choice = MakeRandomInt(1,2)
	    if choice == 1 then
        PlayFlavor(NPC,"voiceover/english/overseer_zerrin/fprt_hood04/qst_overseer_zerrin_callout1_5fcc363d.mp3","Ever wonder how long you can breathe water?  Keep talking to me and you'll find out.","glare",1789839755,3380246682,Spawn)
        elseif choice == 2 then
        PlayFlavor(NPC,"","Did you just drop off the boat here or something? I'm not making money by giving it away. I'd like to retire someday, you know.","no",50468124,3582989183,Spawn)
    end
	if GetQuestStep(Spawn, 5758)==2 then
	    SetStepComplete(Spawn, 5758,2)
	end
end

function respawn(NPC)
	spawn(NPC)
end