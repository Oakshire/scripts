--[[
    Script Name    : SpawnScripts/CryptBetrayal/zonetoqeycatacombepic03deathlyscarabhive.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.19 09:10:26
    Script Purpose : Access to Deathly Scarab Hive zone
                   : 
--]]
local ForgottenPotionIntoTheHive = 5373 -- Forgotten Potion: Into the hive quest 





function spawn(NPC)

end

function can_use_command(NPC, Spawn, Command)
if GetQuestStep(Spawn, ForgottenPotionIntoTheHive) == 3 or HasCompletedQuest(Spawn, ForgottenPotionIntoTheHive) then
return true
else
return false
end
   end


function respawn(NPC)
	spawn(NPC)
end


function respawn(NPC)
	spawn(NPC)
end