--[[
    Script Name    : SpawnScripts/FallenGate/examinegongofuglan.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.13 07:07:53
    Script Purpose : 
                   : 
--]]

local TheLostReligionOfFallenGate = 5317

function spawn(NPC)

end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'inspect' then
               conversation = CreateConversation()
                 AddConversationOption(conversation, "Wipe away the grime.", "Option1")
                   AddConversationOption(conversation, "Stop examining.")
                StartDialogConversation(conversation, 1, NPC, Spawn, "This massive gong appears to be very ancient. It has a veil of grime covering engravings on it.")
    end
end

function Option1(NPC, Spawn)
  conversation = CreateConversation()
                                if GetQuestStep(Spawn, TheLostReligionOfFallenGate) == 1 then
                 AddConversationOption(conversation, "Copy the glyphs onto parchment. ", "Option2")
                                  end
                   AddConversationOption(conversation, "Stop examining.")
                StartDialogConversation(conversation, 1, NPC, Spawn, "There are ogre words written upon it. They read, 'The Gong of Uglan'. There are also some glyphs engraved upon the gong.")
end

function Option2(NPC, Spawn)
    SetStepComplete(Spawn,  TheLostReligionOfFallenGate, 1)
  conversation = CreateConversation()
                   AddConversationOption(conversation, "Pack the parchment away.")
                StartDialogConversation(conversation, 1, NPC, Spawn, "You copy the glyphs onto a papyrus parchment.")
end

function respawn(NPC)
	spawn(NPC)
end