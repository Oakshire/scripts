--[[
    Script Name    : SpawnScripts/qey_epic11_l10_arbor/aJournal.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.22 03:11:53
    Script Purpose : 
                   : 
--]]

function casted_on(NPC, Spawn, SpellName)
  if SpellName == 'Read' then
      local con = CreateConversation()
       AddConversationOption(con, "Read the open entry", "Entry")
        AddConversationOption(con, "Leave the journal alone.","Exit")
        StartDialogConversation(con, 1, NPC, Spawn, "This appears to be a journal, possibly from this home's owner. They apprently haven't been back in while by the signs of the dust on the open page.")
end
end

function Entry(NPC, Spawn)
      local con = CreateConversation()
        AddConversationOption(con, "Leave the journal.","Exit")
        StartDialogConversation(con, 1, NPC, Spawn, "...Josslyn thinks she's so smart! I've told her I had enchantments in place in case one of my summonings gets away. Yes yes, I know I shouldn't practice at home- but all the study chambers have been booked for ages! I've only ever had issues with it one time, ONE TIME, but it went up the chimney and I haven't seen or heard of it since! Even so, the enchantments should do the trick. I MUST prove to Magister Niskel I'm capable of handling these or I'll never hear the end of it... [The entry continues incessantly] ")
end

function Exit(NPC, Spawn)
    CloseConversation(NPC,Spawn)    
end