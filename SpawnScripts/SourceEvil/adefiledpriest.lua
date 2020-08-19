--[[
    Script Name    : SpawnScripts/SourceEvil/adefiledpriest.lua
    Script Author  : Lemmeron
    Script Date    : 2020.08.16 
    Script Purpose : To test scripts and get these priests to heal and assist Vith L'Tar once summoned by him
                   : 
--]]

local VithID = 2540005
local Priest1loc = 433225
local Priest2loc = 433226
local zoneID = 254


function spawn(NPC)
	local WhichOne = GetSpawnLocationID(NPC)
	local Vith = GetSpawn(NPC, VithID)
	if Vith ~= nil then
		if WhichOne == Priest1loc then
			AddTimer(NPC, 10000, "healVith", 1, Vith)  --will add more heals and behavior
		elseif WhichOne == Priest2loc then
			AddTimer(NPC, 20000, "healVith2", 1, Vith) --will add more heals and behavior	
		end
	else
		Say(NPC, "Vith not found!") -- error test
	end
end

function healVith(NPC, Vith)
   if IsAlive(Vith) then
        Say(NPC, "heal as priest 1") -- will change what it says when heals working
        CastSpell(Vith, 400145, 1, NPC) --test spell using quickstrike 400145 instead of a heal
  else 
        Say(NPC, "not my turn as p2") -- error test
  end
end

function healVith2(NPC, Vith)
   if IsAlive(Vith) then
        Say(NPC, "heal as priest 2") -- will change what it says when heals working
        CastSpell(Vith, 90044, 1, NPC) --test spell using painbringer 90044 instead of a heal
   else 
        Say(NPC, "not my turn as p1") -- error test
   end
end
