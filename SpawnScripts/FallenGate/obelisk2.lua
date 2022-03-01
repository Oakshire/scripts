--[[
    Script Name    : SpawnScripts/FallenGate/obelisk2.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.09 07:07:24
    Script Purpose : 
                   : 
--]]


function spawn(NPC)

end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'Read Inscription' then
               conversation = CreateConversation()
               AddConversationOption(conversation, "Stop reading.")
                StartDialogConversation(conversation, 1, NPC, Spawn, "Those above our heads,  Exist to be owned by us,  Power is our right     - Queen Cristanos Thex")

    end
end

function respawn(NPC)
	spawn(NPC)
end