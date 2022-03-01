--[[
    Script Name    : SpawnScripts/FallenGate/obelisk1.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.09 09:07:13
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'Read Inscription' then
               conversation = CreateConversation()
               AddConversationOption(conversation, "Stop reading.")
                StartDialogConversation(conversation, 1, NPC, Spawn, "Blood falls from my blade,  My foes will be defeated,  All vengeance is mine     - King Marklov N'Fyr")

    end
end

function respawn(NPC)
	spawn(NPC)
end