--[[
    Script Name    : SpawnScripts/Freeport/widget_book_fgquest.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.12 09:07:28
    Script Purpose :  books on the table in Academy needed for "Searching the Depths of Fallen Gate" quest
                   : 
--]]

local SearchingTheDepthsOfFallenGate = 5307

function spawn(NPC)

end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == "Thexian Incantations: circa Neriak's Fall" then
               conversation = CreateConversation()
                 AddConversationOption(conversation, "[flip ahead to further notes]", "book2")
                   AddConversationOption(conversation, "[put the book back on the shelf]")
                StartDialogConversation(conversation, 1, NPC, Spawn, "Section 1, paragraph 4 - The time has come for us to unseal the barrier!  My research shows that there is a book hidden deep in what we now call Fallen Gate that details the spell required to unseal the barrier.    - Tundis N'oxyle, Thexian archaeologist.")
    end
end


function book2(NPC, Spawn)
  conversation = CreateConversation()
                 AddConversationOption(conversation, "[try the next book]", "book3")
                   AddConversationOption(conversation, "[put the book away]")
                StartDialogConversation(conversation, 1, NPC, Spawn, "Section 2, paragraph 6 - Our research will be in vain, should we not find the component for the spell N'oxyle has been searching for. I have been poring over some older references, and it seems that the essences of dragoons has been used somehow to seal the barrier. Perhaps the same could be used to unlock it. - Jhos T'sein, Thexian scholar.")
end


function book3(NPC, Spawn)
    if GetQuestStep(Spawn, SearchingTheDepthsOfFallenGate) == 1 then
    SetStepComplete(Spawn, SearchingTheDepthsOfFallenGate, 1)
    end
  conversation = CreateConversation()
                   AddConversationOption(conversation, "[close the book]")
                StartDialogConversation(conversation, 1, NPC, Spawn, "Section 3, paragraph 5 - The fools. They don't know what they have. I shall raise her to her former glory, and together, my undead queen and I shall descend upon the false queen of Neriak and rule forever! I'll hide the bangle in a chest in the Bull Pit! No one will ever look there! - anonymous Teir'Dal")
end                    


function respawn(NPC)
	spawn(NPC)
end