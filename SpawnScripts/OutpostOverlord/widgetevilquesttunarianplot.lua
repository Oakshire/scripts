--[[
    Script Name    : SpawnScripts/OutpostOverlord/widgetevilquesttunarianplot.lua
    Script Author  : Premierio015
    Script Date    : 2020.05.19 05:05:02
    Script Purpose : 
                   : 
--]]

local TheTunarianPlot = 491

function spawn(NPC)

end


function respawn(NPC)
         spawn(NPC)
end

function casted_on(NPC, Spawn, Message)
      if GetQuestStep(Spawn, TheTunarianPlot) == 7 and not HasCompletedQuest(Spawn, TheTunarianPlot) then
      if  Message == "Destroy parchment" then
      local con = CreateConversation()
      SetStepComplete(Spawn, TheTunarianPlot, 7)
      AddConversationOption(con, "Walk away.")
      StartDialogConversation(con, 1, NPC, Spawn, "You toss the parchment scraps into the flames.  Their edges curl, blacken and finally turn to ashes.")
      SetStepComplete(Spawn, TheTunarianPlot, 7)
end
   end
      end