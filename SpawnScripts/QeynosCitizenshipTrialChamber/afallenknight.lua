--[[
    Script Name    : SpawnScripts/QeynosCitizenshipTrialChamber/afallenknight.lua
    Script Author  : Dorbin
    Script Date    : 2022.08.31 03:08:14
    Script Purpose : 
                   : 
--]]

local CalloutCount = true

function spawn(NPC)

end

function hailed(NPC, Spawn)
if CalloutCount == true then
Say(NPC,"Avenge my death...")
    CalloutCount = false
else
    choice = MakeRandomInt(1,3)
    if choice == 1 then
    SendMessage(Spawn, "The knight does not respond to your actions.")
    elseif choice == 2 then
    SendMessage(Spawn, "There is no indication the knight is still breathing.")
    elseif choice == 3 then
    SendMessage(Spawn, "No amount of hailing stirs the knight.")
    end   
end
end

function respawn(NPC)
	spawn(NPC)
end