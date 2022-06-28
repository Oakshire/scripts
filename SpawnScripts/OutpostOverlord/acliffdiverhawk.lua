--[[
    Script Name    : SpawnScripts/OutpostOverlord/acliffdiverhawk.lua
    Script Author  : Cynnar
    Script Date    : 2018.12.24 12:12:43
    Script Purpose : 
    Script Notes   : Hawk needs to turn around after the return flight to original location
--]]

function spawn(NPC)
    

end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)

end

function FlyToMoleRat(NPC)
	
	local TargetMoleRat = GetTempVariable(NPC, "MoleRat")
	
	if TargetMoleRat ~= nil then
		local x = GetX(TargetMoleRat)
        local y = GetY(TargetMoleRat)
        local z = GetZ(TargetMoleRat)
		
		MoveToLocation(NPC, x, y, z, 8, "KillMoleRat")
	end

end

function KillMoleRat(NPC)

    local MoleRat = GetTempVariable(NPC, "MoleRat")
    if MoleRat ~= nil then
		SetTempVariable(NPC, "MoleRat", nil)
        Despawn(MoleRat)
		AddTimer(NPC, 2500, "ReturnHome")
    end
end

function ReturnHome(NPC)

    local x = GetOrigX(NPC)
    local y = GetORigY(NPC)
    local z = GetOrigZ(NPC)

    if IsInCombat(NPC) == false then
        MoveToLocation(NPC, x, y, z, 5)
    end
end
