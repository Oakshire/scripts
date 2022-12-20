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
      AddConversationOption(con, "I must purge the anger from these tormented souls.","Close")
        StartDialogConversation(con, 1, NPC, Spawn, "The cold air of this home seeps under your skin. A chill travels up your spine as you witness listless souls parading about in apparent anguish. Perhaps conquering their anger will calm them.")
        PlayFlavor(Spawn,"","","shiver",0,0)
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