--[[
    Script Name    : SpawnScripts/FallenGate/obelisk3.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.09 07:07:50
    Script Purpose : 
                   : 
--]]


function spawn(NPC)

end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'Read Inscription' then
               conversation = CreateConversation()
               AddConversationOption(conversation, "Stop reading.")
                StartDialogConversation(conversation, 1, NPC, Spawn, "Father Hate leads us,  Every breath burns with loathing,  Our Lord is with us     - King Nutaris G'Zel")

    end
end

function respawn(NPC)
	spawn(NPC)
end
