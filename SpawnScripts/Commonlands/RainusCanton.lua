--[[
    Script Name    : SpawnScripts/Commonlands/RainusCanton.lua
    Script Author  : Premierio015
    Script Date    : 2021.02.27 12:02:54
    Script Purpose : 
                   : 
--]]

local Rainus = 401

function spawn(NPC)

end

function hailed(NPC, Spawn)
    if GetQuestStep(Spawn, Rainus) == 1 then
    SetStepComplete(Spawn, Rainus, 1)
    end
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, " " .. GetName(Spawn) .. ", proudly enacting the will of the Overlord.")
	AddConversationOption(conversation, " " .. GetName(Spawn) .. ", bound in service to none.")
	AddConversationOption(conversation, " " .. GetName(Spawn) .. ", my loyalties remain private.")
	StartConversation(conversation, NPC, Spawn, "Rainus Canton, a once wandering sword now bound in service to the Overlord. And yourself?")
end

function respawn(NPC)

end

