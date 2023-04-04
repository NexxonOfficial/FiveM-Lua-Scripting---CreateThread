function CheckPedIsInAreaThread(coords)
    CreateThread(function()
        --execute anything in here...
    
        while true do
            Wait(1) -- Mandatory wait. Removing this will cause your game to crash!
            local isPedInsideArea = IsEntityAtCoord(PlayerPedId(), coords, 10.0, 10.0, 10.0, 1, 1, 1)
            if isPedInsideArea then
                print('Inside area! ' .. coords.x)
            else
                print('Outside area! 0.0 ' .. coords.x)
            end
        end
    end)
end

CheckPedIsInAreaThread(vector3(0.0, 0.0, 0.0)) -- feel free to change these coords to wherever suits you best!
CheckPedIsInAreaThread(vector3(10.0, 10.0, 0.0)) -- feel free to change these coords to wherever suits you best!

