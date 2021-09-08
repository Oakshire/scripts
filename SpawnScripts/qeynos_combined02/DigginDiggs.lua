--[[
    Script Name    : SpawnScripts/qeynos_combined02/DigginDiggs.lua
    Script Author  : Rylec
    Script Date    : 2021.09.06 11:09:01
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    SpawnSet(NPC, "visual_state", 0) 
    FaceTarget(NPC, Spawn)
    local choice = MakeRandomInt(1, 3)
    
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..choice.."_1020.mp3", "", "", 0, 0, Spawn)
    
    conversation = CreateConversation()

    AddConversationOption(conversation, "Sorry. Just passing by.")
    StartConversation(conversation, NPC, Spawn, "You're looking a might shabby there.  You look like you can use some repair work.  My partner here, Steelguard, can mend any damaged piece of armor or weapons you might have, all for an outrageously low, low price!  We live for the community!")

    AddTimer(NPC, 40000, "ResetState", 1, Spawn)
end

function ResetState(NPC)
    SpawnSet(NPC, "visual_state", 11812) 
end

function respawn(NPC)
	spawn(NPC)
end