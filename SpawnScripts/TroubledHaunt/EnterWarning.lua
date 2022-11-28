--[[
    Script Name    : SpawnScripts/TroubledHaunt/EnterWarning.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.27 01:11:03
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")
SetTempVariable(NPC, "Enter", "true")
end

function InRange(NPC,Spawn,Zone)
if GetTempVariable(NPC,"Enter")=="true" then
   SetTempVariable(NPC, "Enter", "false")
      local con = CreateConversation()
      AddConversationOption(con, "I will purge the anger from these tormented souls.","Close")
        StartDialogConversation(con, 1, NPC, Spawn, "As you enter the home, fridged air causes you to shiver. Listless souls parade about haunting furniture in their anguish. Perhaps conquering their anger will calm them.")
end
end

function Close(NPC,Spawn)
    CloseConversation(NPC,Spawn)
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end