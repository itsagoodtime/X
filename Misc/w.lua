local starttime = tick()
local whitelist = {
    ['X_N54YgsInTQcsBNDj'] = {
        ['HWID'] = 'C4DC8333-6E8C-43E2-A88D-9CE902D28686',
        ['Blacklist'] = false,
        ['Games'] = {
            ['ALL'] = {},
        },
        ['Role'] = 'Owner',
        ['Discord'] = '1336587481537056791',
        ['Type'] = 'PC'
    },
    ['X_pNg9elOatWy0g6Ff'] = {
        ['HWID'] = 'a5967094-e7e5-4a19-a00e-376ef9001367',
        ['Blacklist'] = false,
        ['Games'] = {
            ['Shuntian'] = {},
        },
        ['Role'] = 'Owner',
        ['Discord'] = '1336587481537056791',
        ['Type'] = 'Mobile'
    },
    ['X_hHDFVzRKfK5TKUfi'] = {
        ['HWID'] = 'a5967094-e7e5-4a19-a00e-376ef9001367',
        ['Blacklist'] = false,
        ['Games'] = {
            ['Shuntian'] = {},
        },
        ['Role'] = 'Buyer',
        ['Discord'] = '1318150796663328790',
        ['Type'] = 'Mobile'
    },
    ['X_slA6xDWOvmypJHoV'] = {
        ['HWID'] = 'dad3e1b6-9715-40dd-9183-1439e7022c72',
        ['Blacklist'] = false,
        ['Games'] = {
            ['Shuntian'] = {},
        },
        ['Role'] = 'Buyer',
        ['Discord'] = '837325410378973224',
        ['Type'] = 'Mobile'
    },
    ['X_c9qNrTAwyF9TuMwd'] = {
        ['HWID'] = '9ca2ce56-5489-409e-9535-9e3440b3de67',
        ['Blacklist'] = false,
        ['Games'] = {
            ['Shuntian'] = {},
        },
        ['Role'] = 'Buyer',
        ['Discord'] = '1268526280798638221',
        ['Type'] = 'Mobile'
    },
    ['X_EttYhMKVjWw4i5Rh'] = {
        ['HWID'] = 'ed9e1e6c-00c0-49e7-90f0-2a8e69db0025',
        ['Blacklist'] = false,
        ['Games'] = {
            ['Shuntian'] = {},
        },
        ['Role'] = 'Buyer',
        ['Discord'] = '1352299231154536532',
        ['Type'] = 'Mobile'
    },
    ['X_7PPN0uNxcLjEKZyr'] = {
        ['HWID'] = '40c8f96c-1e0b-4dff-a80b-e1f4421d40b5',
        ['Blacklist'] = false,
        ['Games'] = {
            ['Shuntian'] = {},
        },
        ['Role'] = 'Buyer',
        ['Discord'] = '1335239533565968457',
        ['Type'] = 'Mobile'
    },
    ['X_aSLAbXv4wdVLbRdq'] = {
        ['HWID'] = '4c696b1e-6583-4e80-b43f-41b16aa3004f',
        ['Blacklist'] = false,
        ['Games'] = {
            ['Shuntian'] = {},
        },
        ['Role'] = 'Buyer',
        ['Discord'] = '1198476989980487764',
        ['Type'] = 'Mobile'
    },
}
local key = getgenv().key or key or nil
local hwid = game:GetService("RbxAnalyticsService"):GetClientId()
local default_chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
local default_pad = '='
local base64 = xRequire('Besten.lua','Models')

local secret_chars
local text
local got

while true do
    task.wait()
    secret_chars = base64.generate_chars()
    text = hwid
    local encoded = base64.encode(text, secret_chars, '#')
    local decoded = base64.decode(encoded, secret_chars, '#')
    if text == decoded then
        getgenv().randomchars = secret_chars
        break
    end
end

if whitelist[key] then
    whitelist[key].Time = starttime
    whitelist[key].HWID = base64.encode(whitelist[key].HWID, secret_chars, '#')
else
    return 'nokeythere'
end

return whitelist[key]
