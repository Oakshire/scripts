--[[
    Script Name    : SpawnScripts/Antonica/losttombtoneofdynne.lua
    Script Author  : Premierio015
    Script Date    : 2023.04.15 09:04:45
    Script Purpose : 
                   : 
--]]
local TheLegendOfMotte = 5803 -- THE LEGEND OF MOTTE QUEST

function spawn(NPC)

end

function casted_on(NPC, Spawn, SpellName)
  if SpellName == 'inspect' then
      local con = CreateConversation()
      if GetQuestStep(Spawn, TheLegendOfMotte) == 3 then
       AddConversationOption(con, "Use the tombstone key.", "con1")
       end
         AddConversationOption(con, "Stop inspecting.")
        StartDialogConversation(con, 1, NPC, Spawn, "It is an old tombstone. It reads, \"Here lies Sir Edwin Motte. Warrior, legend, friend of Maestro, friend of Irontoe. May he find fortune beyond.\"  There also seems to be a sort of keyhole on the tombstone.")
end
end   

function con1(NPC, Spawn)
      local con = CreateConversation()
      SetStepComplete(Spawn, TheLegendOfMotte, 3)
         AddConversationOption(con, "Close the compartment.")
        StartDialogConversation(con, 1, NPC, Spawn, "A small compartment opens and you find lost treasure.")

end   

function respawn(NPC)
	spawn(NPC)
end