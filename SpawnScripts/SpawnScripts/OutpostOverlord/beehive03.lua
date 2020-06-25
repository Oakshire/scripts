--[[
    Script Name    : SpawnScripts/OutpostOverlord/beehive03.lua
    Script Author  : jakejp
    Script Date    : 2018.10.08 01:10:18
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end

function casted_on(NPC, Spawn, SpellName)
	if SpellName == "smack hive" then
		SmackHive(Spawn, NPC)
	end
end

function SmackHive(Caster, Target)
	SpawnSet(Target, "show_command_icon", 0)
	local QueenBee
	local SoldierBee
	local beehive01 = 2780121
	
	if GetSpawnID(Target) == beehive01 then
		Say(Caster, "here")
		QueenBee = 401317
		SoldierBee = 401351
	elseif GetSpawnID(Target) == 2780120 then
		QueenBee = 401318
		SoldierBee = 401354
	elseif GetSpawnID(Target) == 2780122 then
		QueenBee = 1585522
		SoldierBee = 401358
	elseif GetSpawnID(Target) == 2780124 then
		QueenBee = 401317
		SoldierBee = 401351
	end
	
	-- 20% chance to spawn a Queen bee
	-- 80% chance to spawn a soldier bee
	choice = math.random(1, 100)

	if choice <= 20 then
		-- spawn a Queen bee
		--SpawnMob(GetZone(Target), 2780076, false, GetX(Target), GetY(Target), GetZ(Target))
                SpawnByLocationID(GetZone(Target), QueenBee)
	else
		-- spawn a soldier bee
		--SpawnMob(GetZone(Target), 2780078, false, GetX(Target), GetY(Target), GetZ(Target))
                SpawnByLocationID(GetZone(Target), SoldierBee)

	end
	AddTimer(Target, 60000, "enable_command_icon_beeHive")
end

function enable_command_icon_beeHive(NPC, Player)
    SpawnSet(NPC, "show_command_icon", 1)
end