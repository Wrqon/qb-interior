local IsNew = false

RegisterNetEvent('qb-interior:client:SetNewState', function(bool)
    IsNew = bool
end)
-- Functions
function TeleportToInterior(x, y, z, h)
    CreateThread(function()
		local player = PlayerPedId()
		local vehicle = GetVehiclePedIsIn(player, false)
		local entity = player
		if (vehicle ~= 0) then
            entity = vehicle
		end
        SetEntityCoords(entity, x, y, z, 0, 0, 0, false)
        SetEntityHeading(entity, h)
        Wait(100)
        DoScreenFadeIn(1000)
    end)
end

function TeleportToInteriorNoVeh(x, y, z, h)
    CreateThread(function()
		local player = PlayerPedId()
		local vehicle = GetVehiclePedIsIn(player, false)
		local entity = player
		if (vehicle ~= 0) then
			QBCore.Functions.Notify("Vehicles not allowed", "error")
		end
        SetEntityCoords(entity, x, y, z, 0, 0, 0, false)
        SetEntityHeading(entity, h)
        Wait(100)
        DoScreenFadeIn(1000)
    end)
end

-- House Robbery
exports('CreateHouseRobbery', function(spawn)
    local exit = json.decode('{"x": 1.46, "y": -10.33, "z": 1.06, "h": 0.39}')
    local model = "furnitured_midapart"
    return CreateShell(spawn, exit, model)
end)

exports('DespawnInterior', function(objects, cb)
    CreateThread(function()
        for _, v in pairs(objects) do
            if DoesEntityExist(v) then
                DeleteEntity(v)
            end
        end

        cb()
    end)
end)

--Core Functions
local function CreateHomeInterior(spawn, exitXYZH, clothesXYZH, stashXYZH, logoutXYZH, allowveh)
    local HomeInterior = {}
    HomeInterior.exit = exitXYZH
    HomeInterior.clothes = clothesXYZH
    HomeInterior.stash = stashXYZH
    HomeInterior.logout = logoutXYZH
    DoScreenFadeOut(500)
    while not IsScreenFadedOut() do
        Wait(10)
    end
	if allowveh == true then
		TeleportToInterior(HomeInterior.exit.x, HomeInterior.exit.y, HomeInterior.exit.z, HomeInterior.exit.h)
	else
		TeleportToInteriorNoVeh(HomeInterior.exit.x, HomeInterior.exit.y, HomeInterior.exit.z, HomeInterior.exit.h)
	end
    return { HomeInterior }
end

exports('CreateHomeInterior', function(spawn, exitXYZH, clothesXYZH, stashXYZH, logoutXYZH, allowveh)
    return CreateHomeInterior(spawn, exitXYZH, clothesXYZH, stashXYZH, logoutXYZH, allowveh)
end)

-- Starting Apartment

exports('CreateStartApt', function(spawn)
    local exit = json.decode('{"x": 266.14, "y": -1007.51, "z": -101.01, "h":0.0}')
	local clothes = json.decode('{"x": 260.04, "y": -1003.91, "z": -99.01, "h":0.0}')
	local stash = json.decode('{"x": 265.89, "y": -999.43, "z": -99.01, "h":265.0}')
	local logout = json.decode('{"x": 262.77, "y": -1002.87, "z": -99.01, "h":70.46}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    if IsNew then
        SetTimeout(750, function()
            TriggerEvent('qb-clothes:client:CreateFirstCharacter')
            IsNew = false
        end)
    end
    return { apt[1] }
end)

-- Apartments
exports('Create4IntegrityWay35', function(spawn)
    local exit = json.decode('{"x": -15.8, "y": -607.04, "z": 100.23, "h":340.0}')
	local clothes = json.decode('{"x": -17.62, "y": -587.54, "z": 94.04, "h":150.0}')
	local stash = json.decode('{"x": -21.75, "y": -600.01, "z": 100.24, "h":250.0}')
	local logout = json.decode('{"x": -12.42, "y": -588.76, "z": 94.03, "h":138.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('Create4IntegrityWay30', function(spawn)
    local exit = json.decode('{"x": -18.47, "y": -581.76, "z": 90.11, "h":75.0}')
	local clothes = json.decode('{"x": -38.25, "y": -583.57, "z": 83.92, "h":248.0}')
	local stash = json.decode('{"x": -25.79, "y": -587.66, "z": 90.12, "h":345.0}')
	local logout = json.decode('{"x": -37.0, "y": -578.43, "z": 83.91, "h":238.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('Create4IntegrityWay28', function(spawn)
    local exit = json.decode('{"x": -31.04, "y": -595.27, "z": 80.03, "h":246.76}')
	local clothes = json.decode('{"x": -38.26, "y": -589.63, "z": 78.83, "h":340.0}')
	local stash = json.decode('{"x": -12.65, "y": -596.88, "z": 79.43, "h":75.0}')
	local logout = json.decode('{"x": -33.38, "y": -582.15, "z": 78.87, "h":180.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('Create3655WildOatsDrive', function(spawn)
    local exit = json.decode('{"x": -174.33, "y": 497.53, "z": 137.67, "h":190.77}')
	local clothes = json.decode('{"x": -167.5, "y": 484.82, "z": 133.84, "h":190.0}')
	local stash = json.decode('{"x": -174.56, "y": 493.97, "z": 130.04, "h":5.0}')
	local logout = json.decode('{"x": -164.07, "y": 481.22, "z": 133.87, "h":140.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('Create2045NorthConkerAve', function(spawn)
    local exit = json.decode('{"x": 373.55, "y": 423.36, "z": 145.91, "h":164.03}')
	local clothes = json.decode('{"x": 374.36, "y": 411.7, "z": 142.1, "h":165.0}')
	local stash = json.decode('{"x": 376.96, "y": 428.84, "z": 138.3, "h":165.0}')
	local logout = json.decode('{"x": 374.8, "y": 404.37, "z": 142.13, "h":100.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('Create2044NorthConkerAve', function(spawn)
    local exit = json.decode('{"x": 341.75, "y": 437.58, "z": 149.39, "h":122.12}')
	local clothes = json.decode('{"x": 334.45, "y": 428.7, "z": 145.57, "h":115.0}')
	local stash = json.decode('{"x": 338.38, "y": 437.01, "z": 141.77, "h":290.0}')
	local logout = json.decode('{"x": 329.27, "y": 423.15, "z": 145.6, "h":40.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('Create3677WhispymoundDrive', function(spawn)
    local exit = json.decode('{"x": 117.26, "y": 559.51, "z": 184.30, "h":184.50}')
	local clothes = json.decode('{"x": 122.0, "y": 548.96, "z": 180.5, "h":185.0}')
	local stash = json.decode('{"x": 118.57, "y": 565.9, "z": 176.7, "h":185.0}')
	local logout = json.decode('{"x": 125.03, "y": 542.23, "z": 480.52, "h":120.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('Create3671WhispymoundDrive', function(spawn)
    local exit = json.decode('{"x": 7.76, "y": 537.99, "z": 176.03, "h":157.11}')
	local clothes = json.decode('{"x": 8.65, "y": 528.34, "z": 170.64, "h":110.0}')
	local stash = json.decode('{"x": 0.09, "y": 524.48, "z": 174.63, "h":320.0}')
	local logout = json.decode('{"x": -1.78, "y": 525.85, "z": 170.63, "h":275.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('Create2862HillcrestAve', function(spawn)
    local exit = json.decode('{"x": -682.05, "y": 592.23, "z": 145.39, "h":217.49}')
	local clothes = json.decode('{"x": -671.65, "y": 587.32, "z": 141.57, "h":225.0}')
	local stash = json.decode('{"x": -680.72, "y": 589.14, "z": 137.77, "h":40.0}')
	local logout = json.decode('{"x": -665.41, "y": 583.45, "z": 141.6, "h":155.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('Create2868HillcrestAve', function(spawn)
    local exit = json.decode('{"x": -758.81, "y": 618.90, "z": 144.15, "h":111.08}')
	local clothes = json.decode('{"x": -767.18, "y": 611.03, "z": 140.33, "h":105.0}')
	local stash = json.decode('{"x": -762.09, "y": 618.81, "z": 136.53, "h":285.0}')
	local logout = json.decode('{"x": -773.17, "y": 606.46, "z": 140.36, "h":40.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('Create2874HillcrestAve', function(spawn)
    local exit = json.decode('{"x": -859.85, "y": 690.90, "z": 152.86, "h":186.09}')
	local clothes = json.decode('{"x": -855.4, "y": 680.1, "z": 149.05, "h":190.0}')
	local stash = json.decode('{"x": -858.36, "y": 697.28, "z": 145.25, "h":185.0}')
	local logout = json.decode('{"x": -852.38, "y": 673.34, "z": 149.08, "h":125.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('Create2113MadWayneThunderDrive', function(spawn)
    local exit = json.decode('{"x": -1289.82, "y": 449.37, "z": 97.90, "h":177.79}')
	local clothes = json.decode('{"x": -1286.19, "y": 438.27, "z": 94.09, "h":180.0}')
	local stash = json.decode('{"x": -1287.88, "y": 455.46, "z": 90.29, "h":180.0}')
	local logout = json.decode('{"x": -1283.73, "y": 431.2, "z": 94.12, "h":120.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('CreateMidApart', function(spawn)
    local exit = json.decode('{"x": 346.50, "y": -1012.36, "z": -99.20, "h":3.66}')
	local clothes = json.decode('{"x": 350.87, "y": -993.83, "z": -99.2, "h":200.0}')
	local stash = json.decode('{"x": 351.92, "y": -998.86, "z": -99.2, "h":270.0}')
	local logout = json.decode('{"x": 344.61, "y": -994.76, "z": -99.2, "h":175.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('CreateLowApart', function(spawn)
    local exit = json.decode('{"x": 266.14, "y": -1007.51, "z": -101.01, "h":0.0}')
	local clothes = json.decode('{"x": 260.04, "y": -1003.91, "z": -99.01, "h":0.0}')
	local stash = json.decode('{"x": 265.89, "y": -999.43, "z": -99.01, "h":265.0}')
	local logout = json.decode('{"x": 262.77, "y": -1002.87, "z": -99.01, "h":70.46}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('CreateAuntHouse', function(spawn)
    local exit = json.decode('{"x": -14.38, "y": -1439.7, "z": 31.1, "h":0.0}')
	local clothes = json.decode('{"x": -18.24, "y": -1439.23, "z": 31.1, "h":260.0}')
	local stash = json.decode('{"x": -17.76, "y": -1432.22, "z": 31.1, "h":340.0}')
	local logout = json.decode('{"x": -16.62, "y": -1434.14, "z": 31.1, "h":335.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('Create302SanAndreasAve2', function(spawn)
    local exit = json.decode('{"x": -458.56, "y": -705.15, "z": 77.09, "h": 0.0}')
	local clothes = json.decode('{"x": -466.89, "y": -687.46, "z": 70.89, "h":180.0}')
	local stash = json.decode('{"x": -466.57, "y": -700.53, "z": 77.1, "h":260.0}')
	local logout = json.decode('{"x": -461.62, "y": -687.11, "z": 70.88, "h":160.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('Create302SanAndreasAve1', function(spawn)
    local exit = json.decode('{"x": -477.07, "y": -693.08, "z": 53.41, "h": 180.0}')
	local clothes = json.decode('{"x": -468.75, "y": -710.74, "z": 47.21, "h":0.0}')
	local stash = json.decode('{"x": -469.17, "y": -697.77, "z": 53.41, "h":80.0}')
	local logout = json.decode('{"x": -474.08, "y": -711.63, "z": 47.2, "h":340.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('CreateTinselTowers45', function(spawn)
    local exit = json.decode('{"x": -599.97, "y": 65.04, "z": 108.03, "h": 90.0}')
	local clothes = json.decode('{"x": -617.6, "y": 56.74, "z": 101.83, "h": 270.0}')
	local stash = json.decode('{"x": -604.6, "y": 57.09, "z": 108.03, "h": 0.0}')
	local logout = json.decode('{"x": -618.17, "y": 62.03, "z": 101.82, "h":255.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('CreateTinselTowers42', function(spawn)
    local exit = json.decode('{"x": -603.43, "y": 58.96, "z": 98.20, "h": 90.0}')
	local clothes = json.decode('{"x": -594.64, "y": 56.13, "z": 97.0, "h": 180.0}')
	local stash = json.decode('{"x": -621.26, "y": 54.14, "z": 97.6, "h": 265.0}')
	local logout = json.decode('{"x": -594.26, "y": 46.96, "z": 97.0, "h":65.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('CreateTinselTowers29', function(spawn)
    local exit = json.decode('{"x": -601.46, "y": 42.15, "z": 93.63, "h": 270.0}')
	local clothes = json.decode('{"x": -583.75, "y": 50.58, "z": 87.43, "h": 90.0}')
	local stash = json.decode('{"x": -596.75, "y": 50.23, "z": 93.63, "h": 180.0}')
	local logout = json.decode('{"x": -582.92, "y": 45.16, "z": 87.42, "h":75.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('CreateDelPerroHeights20', function(spawn)
    local exit = json.decode('{"x": -1458.06, "y": -520.43, "z": 69.56, "h": 125.0}')
	local clothes = json.decode('{"x": -1467.75, "y": -537.4, "z": 63.36, "h": 305.0}')
	local stash = json.decode('{"x": -1457.3, "y": -529.61, "z": 69.57, "h": 40.0}')
	local logout = json.decode('{"x": -1471.35, "y": -533.43, "z": 63.35, "h": 290.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('CreateDelPerroHeights7', function(spawn)
    local exit = json.decode('{"x": -1458.06, "y": -520.43, "z": 56.93, "h": 125.0}')
	local clothes = json.decode('{"x": -1467.75, "y": -537.4, "z": 50.73, "h": 305.0}')
	local stash = json.decode('{"x": -1457.3, "y": -529.61, "z": 56.94, "h": 40.0}')
	local logout = json.decode('{"x": -1471.35, "y": -533.43, "z": 50.72, "h": 290.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('CreateDelPerroHeights4', function(spawn)
    local exit = json.decode('{"x": -1452.48, "y": -540.26, "z": 74.04, "h": 33.06}')
	local clothes = json.decode('{"x": -1449.74, "y": -549.05, "z": 72.84, "h": 120.0}')
	local stash = json.decode('{"x": -1466.59, "y": -528.39, "z": 73.44, "h": 210.0}')
	local logout = json.decode('{"x": -1456.95, "y": -554.73, "z": 72.84, "h": 15.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('CreateRichardsMajestic51', function(spawn)
    local exit = json.decode('{"x": -914.4, "y": -366.1, "z": 109.44, "h": 115.0}')
	local clothes = json.decode('{"x": -926.22, "y": -381.71, "z": 103.24, "h": 300.0}')
	local stash = json.decode('{"x": -914.91, "y": -375.31, "z": 109.45, "h": 30.0}')
	local logout = json.decode('{"x": -929.34, "y": -377.36, "z": 103.23, "h": 280.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('CreateRichardsMajestic4', function(spawn)
    local exit = json.decode('{"x": -915.79, "y": -385.0, "z": 85.48, "h": 300.0}')
	local clothes = json.decode('{"x": -903.84, "y": -369.51, "z": 79.28, "h": 115.0}')
	local stash = json.decode('{"x": -915.25, "y": -375.79, "z": 85.49, "h": 205.0}')
	local logout = json.decode('{"x": -900.83, "y": -373.95, "z": 79.27, "h": 100.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('CreateRichardsMajestic2', function(spawn)
    local exit = json.decode('{"x": -912.96, "y": -365.21, "z": 114.28, "h": 112.55}')
	local clothes = json.decode('{"x": -903.81, "y": -363.78, "z": 113.07, "h": 200.0}')
	local stash = json.decode('{"x": -926.6, "y": -377.63, "z": 113.67, "h": 295.0}')
	local logout = json.decode('{"x": -899.54, "y": -371.86, "z": 113.07, "h": 90.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('CreateWeazelPlaza101', function(spawn)
    local exit = json.decode('{"x": -900.43, "y": -459.86, "z": 126.53, "h": 300.0}')
	local clothes = json.decode('{"x": -888.62, "y": -444.3, "z": 120.34, "h": 115.0}')
	local stash = json.decode('{"x": -899.94, "y": -450.7, "z": 126.54, "h": 205.0}')
	local logout = json.decode('{"x": -885.52, "y": -448.68, "z": 120.33, "h": 95.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('CreateWeazelPlaza70', function(spawn)
    local exit = json.decode('{"x": -897.81, "y": -430.24, "z": 121.61, "h": 115.0}')
	local clothes = json.decode('{"x": -909.96, "y": -445.66, "z": 115.41, "h": 295.0}')
	local stash = json.decode('{"x": -898.48, "y": -439.43, "z": 121.62, "h": 20.0}')
	local logout = json.decode('{"x": -913.01, "y": -441.2, "z": 115.4, "h": 275.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('CreateWeazelPlaza26', function(spawn)
    local exit = json.decode('{"x": -884.36, "y": -445.62, "z": 95.46, "h": 20.0}')
	local clothes = json.decode('{"x": -899.79, "y": -433.62, "z": 89.26, "h": 205.0}')
	local stash = json.decode('{"x": -893.52, "y": -445.01, "z": 95.47, "h": 290.0}')
	local logout = json.decode('{"x": -895.3, "y": -430.65, "z": 89.25, "h": 180.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('CreateMichaelHouse', function(spawn)
    local exit = json.decode('{"x": -815.68, "y": 178.54, "z": 72.15, "h": 290.0}')
	local clothes = json.decode('{"x": -811.79, "y": 175.19, "z": 76.75, "h": 110.0}')
	local stash = json.decode('{"x": -799.81, "y": 177.33, "z": 72.83, "h": 195.0}')
	local logout = json.decode('{"x": -815.95, "y": 180.32, "z": 76.75, "h": 215.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('CreateEclipseTowers3', function(spawn)
    local exit = json.decode('{"x": -784.80, "y": 323.63, "z": 211.99, "h": 263.39}')
	local clothes = json.decode('{"x": -793.37, "y": 326.39, "z": 210.8, "h": 0.0}')
	local stash = json.decode('{"x": -766.83, "y": 328.43, "z": 211.4, "h": 90.0}')
	local logout = json.decode('{"x": -793.36, "y": 335.57, "z": 210.8, "h": 250.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('CreateEclipseTowers5', function(spawn)
    local exit = json.decode('{"x": -777.66, "y": 340.11, "z": 207.62, "h": 90.0}')
	local clothes = json.decode('{"x": -795.44, "y": 331.79, "z": 201.42, "h": 270.0}')
	local stash = json.decode('{"x": -782.36, "y": 332.2, "z": 207.63, "h": 0.0}')
	local logout = json.decode('{"x": -796.16, "y": 337.07, "z": 201.41, "h": 250.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('CreateEclipseTowers9', function(spawn)
    local exit = json.decode('{"x": -778.3, "y": 317.17, "z": 176.8, "h": 265.0}')
	local clothes = json.decode('{"x": -760.67, "y": 325.53, "z": 170.61, "h": 90.0}')
	local stash = json.decode('{"x": -773.66, "y": 325.06, "z": 176.81, "h": 180.0}')
	local logout = json.decode('{"x": -760.05, "y": 320.09, "z": 170.6, "h": 75.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('CreateEclipseTowers31', function(spawn)
    local exit = json.decode('{"x": -778.12, "y": 340.48, "z": 160.0, "h": 90.0}')
	local clothes = json.decode('{"x": -795.91, "y": 332.19, "z": 153.81, "h": 270.0}')
	local stash = json.decode('{"x": -782.82, "y": 332.59, "z": 160.01, "h": 0.0}')
	local logout = json.decode('{"x": -796.63, "y": 337.51, "z": 153.79, "h": 250.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('CreateEclipseTowers40', function(spawn)
    local exit = json.decode('{"x": -778.46, "y": 317.14, "z": 223.26, "h": 265.0}')
	local clothes = json.decode('{"x": -760.66, "y": 325.46, "z": 217.06, "h": 90.0}')
	local stash = json.decode('{"x": -773.72, "y": 325.05, "z": 223.27, "h": 180.0}')
	local logout = json.decode('{"x": -759.93, "y": 320.1, "z": 217.05, "h": 75.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('CreateEclipseTowersPenthouse2', function(spawn)
    local exit = json.decode('{"x": -786.78, "y": 315.74, "z": 187.92, "h": 270.71}')
	local clothes = json.decode('{"x": -797.72, "y": 327.72, "z": 190.72, "h": 0.0}')
	local stash = json.decode('{"x": -794.93, "y": 326.4, "z": 187.31, "h": 265.0}')
	local logout = json.decode('{"x": -795.88, "y": 339.23, "z": 190.72, "h": 125.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('CreateEclipseTowersPenthouse3', function(spawn)
    local exit = json.decode('{"x": -774.32, "y": 341.98, "z": 196.68, "h": 94.64}')
	local clothes = json.decode('{"x": -763.37, "y": 329.24, "z": 199.49, "h": 175.0}')
	local stash = json.decode('{"x": -766.09, "y": 331.36, "z": 196.09, "h": 90.0}')
	local logout = json.decode('{"x": -764.97, "y": 318.5, "z": 199.49, "h": 320.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('CreateCasinoPenthouse', function(spawn)
    local exit = json.decode('{"x": 969.82, "y": 63.1, "z": 112.56, "h": 244.2}')
	local clothes = json.decode('{"x": 975.0, "y": 64.61, "z": 116.16, "h": 330.0}')
	local stash = json.decode('{"x": 971.45, "y": 68.67, "z": 116.16, "h": 235.0}')
	local logout = json.decode('{"x": 970.31, "y": 78.45, "z": 116.18, "h": 350.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('CreateTrevorTrailer', function(spawn)
    local exit = json.decode('{"x": 1973.12, "y": 3816.18, "z": 33.43, "h": 30.0}')
	local clothes = json.decode('{"x": 1969.51, "y": 3815.02, "z": 33.43, "h": 320.0}')
	local stash = json.decode('{"x": 1978.18, "y": 3819.84, "z": 33.45, "h": 290.0}')
	local logout = json.decode('{"x": 1971.0, "y": 3818.99, "z": 33.43, "h": 235.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('CreatePaletoYacht', function(spawn)
    local exit = json.decode('{"x": -1421.36, "y": 6748.99, "z": 5.88, "h": 70.0}')
	local clothes = json.decode('{"x": -1438.72, "y": 6760.86, "z": 5.88, "h": 105.0}')
	local stash = json.decode('{"x": -1430.18, "y": 6759.8, "z": 5.88, "h": 70.0}')
	local logout = json.decode('{"x": -1443.61, "y": 6760.69, "z": 5.88, "h": 225.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('CreateVespucciYacht', function(spawn)
    local exit = json.decode('{"x": -2076.04, "y": -1024.92, "z": 5.88, "h": 70.0}')
	local clothes = json.decode('{"x": -2093.7, "y": -1012.87, "z": 5.88, "h": 105.0}')
	local stash = json.decode('{"x": -2084.89, "y": -1014.14, "z": 5.88, "h": 70.0}')
	local logout = json.decode('{"x": -2098.27, "y": -1013.18, "z": 5.88, "h": 225.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('CreateBunker', function(spawn)
    local exit = json.decode('{"x": 890.55, "y": -3245.86, "z": -98.27, "h": 90.0}')
	local clothes = json.decode('{"x": 903.19, "y": -3199.45, "z": -97.19, "h": 230.0}')
	local stash = json.decode('{"x": 908.24, "y": -3203.6, "z": -97.19, "h": 290.0}')
	local logout = json.decode('{"x": 906.55, "y": -3199.11, "z": -97.19, "h": 150.0}')
	local allowveh = true
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('Create14Garage', function(spawn)
    local exit = json.decode('{"x": 240.51, "y": -1004.79, "z": -99.0, "h": 90.0}')
	local clothes = nil
	local stash = json.decode('{"x": 234.71, "y": -975.99, "z": -99.0, "h": 0.0}')
	local logout = nil
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('Create4Garage', function(spawn)
    local exit = json.decode('{"x": 636.75, "y": 4750.72, "z": -59.0, "h": 90.0}')
	local clothes = nil
	local stash = json.decode('{"x": 630.7, "y": 4755.33, "z": -59.0, "h": 0.0}')
	local logout = nil
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('Create2Garage', function(spawn)
    local exit = json.decode('{"x": 179.15, "y": -1001.31, "z": -99.0, "h": 180.0}')
	local clothes = nil
	local stash = json.decode('{"x": 177.3, "y": -1000.69, "z": -99.0, "h": 0.0}')
	local logout = nil
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('CreateTrucksGarage', function(spawn)
    local exit = json.decode('{"x": 782.84, "y": -2997.89, "z": -69.0, "h": 230.0}')
	local clothes = nil
	local stash = json.decode('{"x": 784.91, "y": -2996.52, "z": -69.0, "h": 340.0}')
	local logout = nil
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('CreateWarehouse', function(spawn)
    local exit = json.decode('{"x": 970.83, "y": -2990.88, "z": -40.5, "h": 180.0}')
	local clothes = json.decode('{"x": 959.8, "y": -3005.53, "z": -40.5, "h": 290.0}')
	local stash = json.decode('{"x": 968.45, "y": -2999.74, "z": -40.5, "h": 90.0}')
	local logout = json.decode('{"x": 959.41, "y": -3000.0, "z": -40.5, "h": 230.0}')
	local allowveh = true
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)

exports('CreateArcadiusOffice', function(spawn)
    local exit = json.decode('{"x": -141.67, "y": -617.78, "z": 168.82, "h": 220.0}')
	local clothes = json.decode('{"x": -132.09, "y": -633.34, "z": 168.82, "h": 225.0}')
	local stash = json.decode('{"x": -123.98, "y": -643.29, "z": 168.82, "h": 275.0}')
	local logout = json.decode('{"x": -125.52, "y": -635.08, "z": 168.82, "h": 105.0}')
	local allowveh = false
	local apt = CreateHomeInterior(spawn, exit, clothes, stash, logout, allowveh)
    return { apt[1] }
end)
