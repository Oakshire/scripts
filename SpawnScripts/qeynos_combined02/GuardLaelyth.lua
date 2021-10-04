--[[
    Script Name    : SpawnScripts/qeynos_combined02/GuardLaelyth.lua
    Script Author  : Rylec
    Script Date    : 2021.10.04 07:10:10
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local voice = MakeRandomInt(1,3)
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1065.mp3", "", "", 0, 0, Spawn)

	local emote = MakeRandomInt(1,3)
        
        if emote == 1 then
            Say(NPC, "Greetings illustrious Qeynos citizen!")
            PlayAnimation(NPC, 13287)    
        elseif emote == 2 then
            Say(NPC, "Tunare's blessings!")
            PlayAnimation(NPC, 12167)  
        else
            Say(NPC, "Our Queen sends her greetings!")
            PlayAnimation(NPC, 121)
        end
end

function respawn(NPC)
	spawn(NPC)
end