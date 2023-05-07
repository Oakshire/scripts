--[[
    Script Name    : SpawnScripts/Antonica/rikantusmagicchest.lua
    Script Author  : Premierio015
    Script Date    : 2023.05.06 02:05:11
    Script Purpose : 
                   : 
--]]

local WhispersOfFortune = 5809

function spawn(NPC)

end

function casted_on(NPC, Spawn, SpellName)
  if SpellName == 'inspect' then
      local con = CreateConversation()
      if GetQuestStep(Spawn, WhispersOfFortune) == 4 then
       AddConversationOption(con, "Open the chest.", "con1")
       end
        AddConversationOption(con, "Leave the chest alone.")
        StartDialogConversation(con, 1, NPC, Spawn, "This chest looks to be of a dark elf design. It has fantastic symbols of the arcane etched all over the surface. There is no lock to bind it, but something keeps it bound tight.")
end
end

function con1(NPC, Spawn)
       SetStepComplete(Spawn, WhispersOfFortune, 4)
      local con = CreateConversation()
        AddConversationOption(con, "Leave the chest alone.")
        StartDialogConversation(con, 1, NPC, Spawn, "As you go to open the chest it slowly opens its maw before you can touch it. Inside the darkness you reach and grab the only items you can find.")
end

function respawn(NPC)
	spawn(NPC)
end