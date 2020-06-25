--[[
	Script Name	: ZoneScripts/NektroposCastle.lua
	Script Purpose	: Nektropos Castle
	Script Author	: smash
	Script Date	: 2016.1.24
	Script Notes	: 
--]]

function init_zone_script(Zone)
    SetLocationProximityFunction(Zone, -0.05, -0.34, 33.54, 10, "OfferVisionsOfHatred", "Leave")
    SetLocationProximityFunction(Zone, -51, 14, 80, 10, "SpawnArchfiend", "Leave")
    SetLocationProximityFunction(Zone, 57, 14, -84, 10, "SpawnNythDollsBed", "Leave")
    SetLocationProximityFunction(Zone, -27, 13, -28, 7, "SpawnNythDollsBedroomMaltus", "Leave")
    SetLocationProximityFunction(Zone, -40, -13, -45, 7, "SpawnNythDollsBasement1", "Leave")
    SetLocationProximityFunction(Zone, -24, -13, -45, 7, "SpawnNythDollsBasement2", "Leave")
	SetLocationProximityFunction(Zone, 48, -13.5, 10, 7, "MaltusHallwayTrap1", "Leave")
	SetLocationProximityFunction(Zone, 81, -13.5, 11, 7, "MaltusHallwayTrap2", "Leave")
	SetLocationProximityFunction(Zone, 130, -13.5, 11, 7, "MaltusHallwayTrap4", "Leave")
	SetLocationProximityFunction(Zone, 157, -13.5, 11, 7, "MaltusHallwayTrap5", "Leave")
end

function OfferVisionsOfHatred(Zone, Player)
    if CanReceiveQuest(Player, 173) then
        OfferQuest(nil,Player, 173)
        SendMessage(Player, "A strange hatred grows inside you.")
    end
end

function Leave(Zone, Player)
end

function SpawnArchfiend(Zone, Player)
    --Using deirdre's door to keep track on if this mob was spawned
    local door = GetSpawnByLocationID(Zone, 1439497)
    if door == nil then
        return
    end
    
    if GetTempVariable(door, "ArchfiendSpawned") ~= "true" then
        --Spawn Archfiend Izzoroth
        SetTempVariable(door, "ArchfiendSpawned", "true")
        SpawnByLocationID(Zone, 616612)
    end
end

function SpawnNythDollsBed(Zone, Player)
    local bed = GetSpawnByLocationID(Zone, 439534)
    
    if GetTempVariable(bed, "NythDollsSpawned") ~= "true" then
        SpawnGroupByID(Zone, 1043630)
        SetTempVariable(bed, "NythDollsSpawned", "true")
        SendMessage(Player, "As you approach the bed dolls scurry out from under the bed to attack.")
    end
end

function SpawnNythDollsBedroomMaltus(Zone, Player)
    local door = GetSpawnByLocationID(Zone, 1439456)
    
    if GetTempVariable(door, "NythDollsSpawned") ~= "true" then
        SpawnGroupByID(Zone, 43686)
        SetTempVariable(door, "NythDollsSpawned", "true")
        SendMessage(Player, "You hear the sound of tiny voices laughing at you.")
    end
end

function SpawnNythDollsBasement1(Zone, Player)
    local door = GetSpawnByLocationID(Zone, 1439456)
    
    if GetTempVariable(door, "NythDollsBasementSpawned") ~= "true" then
        SpawnGroupByID(Zone, 43685)
        SetTempVariable(door, "NythDollsBasementSpawned", "true")
        SendMessage(Player, "You hear the sound of tiny voices laughing at you.")
    end
end

function SpawnNythDollsBasement2(Zone, Player)
    local door = GetSpawnByLocationID(Zone, 1439456)
    
    if GetTempVariable(door, "NythDollsBasementSpawned2") ~= "true" then
        SpawnGroupByID(Zone, 43686)
        SetTempVariable(door, "NythDollsBasementSpawned2", "true")
        SendMessage(Player, "You hear the sound of tiny voices laughing at you.")
    end
end

function MaltusHallwayTrap1(Zone, Player)
	local door = GetSpawnByLocationID(Zone, 619853)
	
	if GetTempVariable(door, "MaltusHallwayTrap1") ~= "true" then
		SetTempVariable(door, "MaltusHallwayTrap1", "true")
		local door2 = GetSpawnByLocationID(Zone, 619850)
		UseWidget(door)
		UseWidget(door2)
		SendMessage(Player, "You hear the sound of grating stone as the doors slide open.")
		
		local fleshripper = GetSpawnByLocationID(Zone, 616395)
		if fleshripper ~= nil then
			Attack(fleshripper, Player)
		end
	end
end

function MaltusHallwayTrap2(Zone, Player)
	local door = GetSpawnByLocationID(Zone, 619866)
	
	if GetTempVariable(door, "MaltusHallwayTrap2") ~= "true" then
		SetTempVariable(door, "MaltusHallwayTrap2", "true")
		local door2 = GetSpawnByLocationID(Zone, 619867)
		local door3 = GetSpawnByLocationID(Zone, 439514)
		local door4 = GetSpawnByLocationID(Zone, 439515)
		UseWidget(door)
		UseWidget(door2)
		UseWidget(door3)
		UseWidget(door4)
		SendMessage(Player, "You're not sure but you think the walls were making noise.")
		
		local fleshripper = GetSpawnByLocationID(Zone, 616646)
		if fleshripper ~= nil then
			Attack(fleshripper, Player)
		end
	end
end

function MaltusHallwayTrap4(Zone, Player)
	local door = GetSpawnByLocationID(Zone, 439516)
	
	if GetTempVariable(door, "MaltusHallwayTrap4") ~= "true" then
		SetTempVariable(door, "MaltusHallwayTrap4", "true")
		local door2 = GetSpawnByLocationID(Zone, 619871)
		UseWidget(door)
		UseWidget(door2)
		SendMessage(Player, "You hear a grating noise as the walls begin to shift, but the doors fail to open completely.")
	end
end

function MaltusHallwayTrap5(Zone, Player)
	local door = GetSpawnByLocationID(Zone, 619886)
	
	if GetTempVariable(door, "MaltusHallwayTrap5") ~= "true" then
		SetTempVariable(door, "MaltusHallwayTrap5", "true")
		local door2 = GetSpawnByLocationID(Zone, 619884)
		UseWidget(door)
		UseWidget(door2)
		SendMessage(Player, "You're not sure but you think the walls were making noise.")
	end
end