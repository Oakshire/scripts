--[[
    Script Name    : SpawnScripts/qeynos_combined02/HunterLatharForestdeep.lua
    Script Author  : Rylec
    Script Date    : 2021.09.06 08:09:43
    Script Purpose : 
                   : 
--]]

local count = 1

function spawn(NPC)

end

function hailed(NPC, Spawn)
    if count == 1 then
        stand(NPC, Spawn)   
    elseif count > 1 and count < 6 then
        count = count + 1
    else
        count = 1
    end

	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/hunter_lathar_forestdeep/qey_village05/quests/hunter_forestdeep/hunter_forestdeep.mp3", "", "", 1771449207, 2174692031, Spawn)
	AddConversationOption(conversation, "Sorry to have bothered you.")
	StartConversation(conversation, NPC, Spawn, "What do you need? I'm very busy.")

    AddTimer(NPC, 60000, "countReset")    
end

function stand(NPC, Spawn)
    SpawnSet(NPC, "visual_state", "0")
    PlayAnimation(NPC, "220")
    AddTimer(NPC, 1000, "turn", 1, Spawn)
    count = count + 1
end

function turn(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    AddTimer(NPC, 10000, "crouch")
end

function crouch(NPC)
    PlayAnimation(NPC, "219")
    AddTimer(NPC, 800, "crouchIdle")
end

function crouchIdle(NPC)
    SpawnSet(NPC, "visual_state", "221")
end

function respawn(NPC)
	spawn(NPC)
end

function countReset(NPC)
    count = 1
end