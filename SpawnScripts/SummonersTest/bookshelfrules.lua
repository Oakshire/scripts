--[[
    Script Name    : SpawnScripts/SummonersTest/bookshelfrules.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.12 02:11:51
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function casted_on(NPC, Spawn, SpellName)
  if SpellName == 'Search bookcase' then
    local con = CreateConversation()
    AddConversationOption(con, "\"The Summoner's Test\"", "Summon")
    AddConversationOption(con, "\"The Sorcerer's Trial\"", "Sorc")
    AddConversationOption(con, "\"The Enchanter's Challenge\"", "Enchant")
    AddConversationOption(con, "Leave them alone.","CloseConversation")
    StartDialogConversation(con, 1, NPC, Spawn, "These books appear to be a collection of testing materials for use in arcane advancement trials. A few appear less dust-covered than others.")
end
end

function Summon(NPC, Spawn)
    local con = CreateConversation()
    AddConversationOption(con, "Return the testing materials.","CloseConversation")
    StartDialogConversation(con, 1, NPC, Spawn, " ...A summoning ring composed of unlit candles must prepared so pupils have a chance to demonstrate control while not entirely being in control.  Allow the students to complete the circle by lighting the candles, followed by tapping into the \"hole\" generated within the ring.  This will allow the Three-Tower's energies to control the elements presented for the potentional summoner. NOTE: This should always be conducted in a small space should go the testing go awry! - Magister Niksel ")
end

function Sorc(NPC, Spawn)
    local con = CreateConversation()
    AddConversationOption(con, "Return the testing materials.","CloseConversation")
    StartDialogConversation(con, 1, NPC, Spawn, " ...A sorcerer must demonstrate a mastery of arcane beings by displaying an elemental prowess.  To begin, they must weave the ether about them upon the focusing stone within a candel ring to initiate the trial.  Four selected arcane creatures from the Three Towers's menagerie will be locally teleported to the testing chamber. They should repair quickly once returned for the next tester should they be torn asunder. NOTE: The Knowledge Guardian may need a Magister's attention as it made a mess of the testing chamber during a recent pupil's trial! - Magister Niksel ")
end

function Enchant(NPC, Spawn)
    local con = CreateConversation()
    AddConversationOption(con, "Return the testing materials.","CloseConversation")
    StartDialogConversation(con, 1, NPC, Spawn, " A large note is affixed to this book. \"Future Enchanter Charm tests need new protocols after the last incident. The aspiring enchanter was reverse-charmed and forced to run off the top floor of the Three Towers to an undesirable conclusion. Please conduct testing in another way until new methods can be employed! - Magister Niksel\" ")
end

function respawn(NPC)
	spawn(NPC)
end