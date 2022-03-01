--[[
    Script Name    : SpawnScripts/qeynos_combined02/Adrianna.lua
    Script Author  : Rylec
    Script Date    : 2021.08.04 07:08:16
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    SpawnSet(NPC, "visual_state", 0) 
	FaceTarget(NPC, Spawn)
	
    PlayFlavor(NPC, "voiceover/english/merchant_adrianna/qey_elddar/merchantadrianna000.mp3", "", "hello", 2772064820, 4249063361, Spawn)

    conversation = CreateConversation()
    
    AddConversationOption(conversation, "No, I am good to go thanks.")
    StartConversation(conversation, NPC, Spawn, "Hello there!  Can I interest you in any wares for your travels?")
    
    AddTimer(NPC, 5000, "ResetState")  
end

function ResetState(NPC)
    SpawnSet(NPC, "visual_state", 11244) 
end

function respawn(NPC)
	spawn(NPC)
end