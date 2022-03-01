--[[
    Script Name    : SpawnScripts/FallenGate/obelisk4.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.09 09:07:01
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'Read Inscription' then
               conversation = CreateConversation()
               AddConversationOption(conversation, "Stop reading.")
                StartDialogConversation(conversation, 1, NPC, Spawn, "Mother Night hides us, Upon land and beneath earth, Sweet darkness is ours.      - Queen Venka M'Riv")

    end
end

function respawn(NPC)
	spawn(NPC)
end