--[[
    Script Name    : SpawnScripts/WillowWood/anoakmystgreatbear.lua
    Script Author  : Dorbin
    Script Date    : 2022.02.21 05:02:14
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function casted_on(NPC, Spawn, SpellName)
  if SpellName == 'touch' then
    choice = math.random(1,3)
   if choice == 1 then
   PlaySound(NPC, 17872, Spawn)
    PlayFlavor(NPC, "", "", "attack", 0, 0, Spawn)
    elseif choice == 2 then
    Emote(NPC, "eyes at you warily.", Spawn) 
    else
    Emote(NPC, "sniffs around you.", Spawn)    
    end
end   
end      

function respawn(NPC)
	spawn(NPC)
end