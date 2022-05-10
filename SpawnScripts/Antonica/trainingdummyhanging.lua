--[[
    Script Name    : SpawnScripts/Antonica/trainingdummyhanging.lua
    Script Author  : Premierio015
    Script Date    : 2022.05.09 04:05:30
    Script Purpose : 
                   : 
--]]

local AFrontiersladysTask = 5528

function spawn(NPC)

end



function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, Message)
   if Message == "inspect" then
   local con = CreateConversation()
   if GetQuestStep(Spawn, AFrontiersladysTask) == 3 then
   AddConversationOption(con, "Place Dancer's arrow on the target.", "dlg1")
   end
   AddConversationOption(con, "Stop inspecting the target")
   StartDialogConversation(con, 1, NPC, Spawn, "The target looks worn. A few pieces of arrow still remain, some more recent than others. There seems to be a small symbol of a green arrow over a golden pine tree.   ")
   end
  end
  
  function dlg1(NPC, Spawn)
      SetStepComplete(Spawn, AFrontiersladysTask, 3)
      local con = CreateConversation() 
      AddConversationOption(con, "Stop inspecting the target")
         StartDialogConversation(con, 1, NPC, Spawn, "You ram the special arrow deep into the target.")
end