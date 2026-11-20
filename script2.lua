--[[ Zainll Leak By Bot | Private Server]]

if not game:IsLoaded() then game.Loaded:Wait() end

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Lighting = game:GetService("Lighting")
local RunService = game:GetService("RunService")
local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

-- Add Premium Gold Theme
WindUI:AddTheme({
    Name = "Premium Gold",
    Accent = WindUI:Gradient({
        ["0"] = { Color = Color3.fromRGB(180, 0, 0), Transparency = 0 },
        ["50"] = { Color = Color3.fromRGB(255, 215, 0), Transparency = 0 },
        ["100"] = { Color = Color3.fromRGB(255, 0, 0), Transparency = 0 }
    }, { Rotation = 45 }),
    Outline = Color3.fromRGB(255, 215, 0),
    Text = Color3.fromRGB(255, 255, 255),
    Placeholder = Color3.fromRGB(160, 160, 160),
    Button = WindUI:Gradient({
        ["0"] = { Color = Color3.fromRGB(120, 0, 0), Transparency = 0 },
        ["100"] = { Color = Color3.fromRGB(80, 0, 0), Transparency = 0 }
    }, { Rotation = 45 }),
    Icon = Color3.fromRGB(255, 215, 0),
    Background = Color3.fromRGB(10, 10, 12)
})

-- Create Main Window dengan nama Crack
local MainWindow = WindUI:CreateWindow({
    Title = '<font color="rgb(0,120,255)">ZAINL</font> <font color="rgb(255,0,0)">EXPLOITS</font> <font color="rgb(255,215,0)">Crack By Fiqzr7</font>',
    Author = "👑 ZAINL EXPLOITER | Crack By Fiqzr7",
    Icon = "rbxassetid://84945967838680",
    IconSize = 36,
    Folder = "ZAINL_PREMIUM",
    Size = UDim2.fromOffset(750, 450),
    Theme = "Premium Gold",
    Transparent = true,
    Acrylic = true,
    SideBarWidth = 190,
    HasOutline = true,
    HideSearchBar = false,
    User = {
        Enabled = true,
        Anonymous = false
    },
    KeySystem = {
        Key = {"ZAINLG4UL"},
        Note = "Masukan Key untuk membuka ui script",
        Thumbnail = { Image = "rbxassetid://84945967838680" },
        URL = "",
        SaveKey = true,
        Callback = function()
            WindUI:Notify({
                Title = "ZAINL PREMIUM",
                Content = "Selamat datang Premium User! | Crack By Zainl",
                Duration = 3
            })
        end
    }
})

-- Ping Tag
local PingTag = MainWindow:Tag({
    Title = "PING: 0ms",
    Icon = "wifi",
    Color = Color3.fromRGB(0, 255, 0)
})

task.spawn(function()
    while true do
        task.wait(1)
        local ping = math.random(30, 120)
        PingTag:SetTitle("PING: " .. ping .. "ms")
        if ping < 100 then
            PingTag:SetColor(Color3.fromRGB(0, 255, 0))
        elseif ping < 200 then
            PingTag:SetColor(Color3.fromRGB(255, 255, 0))
        else
            PingTag:SetColor(Color3.fromRGB(255, 0, 0))
        end
    end
end)

-- Tags
MainWindow:Tag({ Title = "👑 FREE ACCES | Crack By Zainl", Color = Color3.fromRGB(255, 215, 0) })
MainWindow:Tag({ Title = "🟢 WORKING", Color = Color3.fromRGB(0, 255, 100) })
MainWindow:Tag({ Title = "👤 USERNAME: " .. LocalPlayer.Name, Color = Color3.fromRGB(100, 150, 255) })

-- ============================================================
-- DASHBOARD TAB
-- ============================================================
local DashboardTab = MainWindow:Tab({ Title = "DASHBOARD", Icon = "crown" })

DashboardTab:Paragraph({
    Title = "👑 ZAINL PREMIUM | Crack By Zainl",
    Desc = "Versi eksklusif dengan fitur terkunci dan performa maksimal.\nRank: Premium User\nStatus: Active\nCracker: Zainl"
})

DashboardTab:Paragraph({
    Title = "SYSTEM INFO",
    Desc = "🔥 Version: V4.0 CRACK\n⚡ Executor: " .. identifyexecutor() .. "\n🛡️ Security: Active\n👑 Cracker: Zainl\n👑 Owner: ZAINL EXPLOITS OFFICIALS"
})

DashboardTab:Button({
    Title = "JOIN DISCORD",
    Desc = "Dapatkan update & key terbaru",
    Callback = function()
        setclipboard("")
        WindUI:Notify({ Title = "COPIED", Content = "Link Discord dicopy!", Duration = 3 })
    end
})

-- ============================================================
-- PLAYER TAB
-- ============================================================
local PlayerTab = MainWindow:Tab({ Title = "PLAYER", Icon = "user" })

PlayerTab:Section({ Title = "⚡ MOVEMENT" })

PlayerTab:Button({
    Title = "SPEED 80",
    Desc = "Lari lebih cepat",
    Callback = function()
        local humanoid = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
        if humanoid then humanoid.WalkSpeed = 80 end
    end
})

PlayerTab:Button({
    Title = "SPEED 120",
    Desc = "Super speed",
    Callback = function()
        local humanoid = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
        if humanoid then humanoid.WalkSpeed = 120 end
    end
})

PlayerTab:Button({
    Title = "RESET SPEED",
    Desc = "Balikin normal",
    Callback = function()
        local humanoid = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
        if humanoid then humanoid.WalkSpeed = 16 end
    end
})

PlayerTab:Button({
    Title = "HIGH JUMP",
    Desc = "Loncat lebih tinggi",
    Callback = function()
        local humanoid = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
        if humanoid then humanoid.JumpPower = 120 end
    end
})

PlayerTab:Button({
    Title = "RESET JUMP",
    Desc = "Normal jump",
    Callback = function()
        local humanoid = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
        if humanoid then humanoid.JumpPower = 50 end
    end
})

PlayerTab:Section({ Title = "🛡️ SURVIVAL" })

PlayerTab:Button({
    Title = "GOD MODE",
    Desc = "Tidak bisa mati (basic)",
    Callback = function()
        local humanoid = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid.MaxHealth = math.huge
            humanoid.Health = math.huge
        end
    end
})

PlayerTab:Button({
    Title = "RESET HEALTH",
    Desc = "Balikin HP normal",
    Callback = function()
        local humanoid = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid.MaxHealth = 100
            humanoid.Health = 100
        end
    end
})

PlayerTab:Section({ Title = "👻 VISUAL CHARACTER" })

PlayerTab:Button({
    Title = "INVISIBLE",
    Desc = "Karakter hilang",
    Callback = function()
        local character = LocalPlayer.Character
        if character then
            for _, part in pairs(character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.Transparency = 1
                end
            end
        end
    end
})

PlayerTab:Button({
    Title = "RESET",
    Desc = "Balikin terlihat",
    Callback = function()
        local character = LocalPlayer.Character
        if character then
            for _, part in pairs(character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.Transparency = 0
                end
            end
        end
    end
})

PlayerTab:Section({ Title = "🎮 UTILITY" })

PlayerTab:Button({
    Title = "RESET CHARACTER",
    Desc = "Respawn cepat",
    Callback = function()
        LocalPlayer.Character:BreakJoints()
    end
})

PlayerTab:Button({
    Title = "REJOIN SERVER",
    Desc = "Masuk ulang server",
    Callback = function()
        game:GetService("TeleportService"):Teleport(game.PlaceId, LocalPlayer)
    end
})

PlayerTab:Button({
    Title = "SIT MODE",
    Desc = "Duduk otomatis",
    Callback = function()
        local humanoid = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
        if humanoid then humanoid.Sit = true end
    end
})

-- ============================================================
-- VISUAL TAB
-- ============================================================
local VisualTab = MainWindow:Tab({ Title = "VISUAL", Icon = "eye" })

VisualTab:Section({ Title = "🌈 GRAPHIC" })

VisualTab:Button({
    Title = "FULLBRIGHT",
    Desc = "Map jadi terang total",
    Callback = function()
        Lighting.Brightness = 2
        Lighting.ClockTime = 12
        Lighting.GlobalShadows = false
        Lighting.Ambient = Color3.new(1, 1, 1)
    end
})

VisualTab:Button({
    Title = "NO FOG",
    Desc = "Hilangkan kabut",
    Callback = function()
        Lighting.FogStart = 0
        Lighting.FogEnd = 1000000
    end
})

VisualTab:Button({
    Title = "MAX BRIGHTNESS",
    Desc = "Brightness ultra terang",
    Callback = function()
        Lighting.Brightness = 10
        Lighting.ExposureCompensation = 2
    end
})

VisualTab:Button({
    Title = "TIME DAY",
    Desc = "Paksa siang hari",
    Callback = function()
        Lighting.ClockTime = 14
    end
})

VisualTab:Section({ Title = "👁️ CAMERA VISUAL" })

VisualTab:Button({
    Title = "FOV 120",
    Desc = "Camera lebih luas",
    Callback = function()
        workspace.CurrentCamera.FieldOfView = 120
    end
})

VisualTab:Button({
    Title = "FOV 90",
    Desc = "Balanced view",
    Callback = function()
        workspace.CurrentCamera.FieldOfView = 90
    end
})

VisualTab:Button({
    Title = "FOV 70 RESET",
    Desc = "Normal view",
    Callback = function()
        workspace.CurrentCamera.FieldOfView = 70
    end
})

VisualTab:Section({ Title = "✨ EFFECTS" })

VisualTab:Button({
    Title = "REMOVE SHADOW",
    Desc = "Hilangkan semua shadow",
    Callback = function()
        Lighting.GlobalShadows = false
    end
})

VisualTab:Button({
    Title = "LOW GRAPHIC MODE",
    Desc = "FPS boost visual low",
    Callback = function()
        for _, obj in pairs(workspace:GetDescendants()) do
            if obj:IsA("ParticleEmitter") or obj:IsA("Trail") then
                obj.Enabled = false
            end
        end
    end
})

VisualTab:Button({
    Title = "REMOVE DECALS",
    Desc = "Hapus semua texture",
    Callback = function()
        for _, obj in pairs(workspace:GetDescendants()) do
            if obj:IsA("Decal") or obj:IsA("Texture") then
                obj:Destroy()
            end
        end
    end
})

VisualTab:Section({ Title = "🎮 CHARACTER VISUAL" })

VisualTab:Button({
    Title = "INVISIBLE FULL",
    Desc = "Karakter hilang total",
    Callback = function()
        local character = LocalPlayer.Character
        if character then
            for _, part in pairs(character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.Transparency = 1
                end
            end
        end
    end
})

VisualTab:Button({
    Title = "RESET",
    Desc = "Balikin karakter normal",
    Callback = function()
        local character = LocalPlayer.Character
        if character then
            for _, part in pairs(character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.Transparency = 0
                    part.CanCollide = true
                end
            end
        end
    end
})

VisualTab:Section({ Title = "💡 EXTRA VISUAL" })

VisualTab:Button({
    Title = "CLEAR MAP LAG",
    Desc = "Hilangkan efek berat",
    Callback = function()
        for _, obj in pairs(workspace:GetDescendants()) do
            if obj:IsA("ParticleEmitter") or obj:IsA("Smoke") or obj:IsA("Fire") then
                obj.Enabled = false
            end
        end
    end
})

VisualTab:Button({
    Title = "RAINBOW LIGHT",
    Desc = "Cahaya berubah warna",
    Callback = function()
        task.spawn(function()
            while true do
                for hue = 0, 1, 0.05 do
                    Lighting.Ambient = Color3.fromHSV(hue, 1, 1)
                    task.wait(0.1)
                end
            end
        end)
    end
})

-- ============================================================
-- EXPLOITS TAB
-- ============================================================
local ExploitsTab = MainWindow:Tab({ Title = "EXPLOITS", Icon = "skull" })

ExploitsTab:Button({
    Title = "🔍 SCAN BACKDOOR",
    Desc = "Mendeteksi RemoteEvent mencurigakan dan celah backdoor yang tersedia",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/silentscript1/Remote-Event_Backdoor/refs/heads/main/Remote_SilentScript"))()
    end
})

ExploitsTab:Button({
    Title = "💰 FAKE DONATE",
    Desc = "Menampilkan efek donasi visual tanpa transaksi asli",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/4iqtSMB6/raw"))()
    end
})

ExploitsTab:Button({
    Title = "💬 SPAMMING CHAT",
    Desc = "Spamm Chat",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/silentscript1/SpamChat/refs/heads/main/SilentSpam"))()
    end
})

ExploitsTab:Button({
    Title = "👤 FLING PLAYER",
    Desc = "Mendorong atau melempar player menggunakan physics force",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/silentteam-87/FlingPlayer/refs/heads/main/SILENT-GGWP"))()
    end
})

ExploitsTab:Button({
    Title = "🌪️ SUPER RING PARTS",
    Desc = "Mengontrol part di sekitar menjadi lingkaran berputar",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/silentteam-87/SuperRingParts/refs/heads/main/SILENT EXPLOITS"))()
    end
})

ExploitsTab:Button({
    Title = "🧲 BRING PARTS",
    Desc = "Menarik part yang tidak terkunci ke posisi karakter",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/silentteam-87/freeAcces9999x/refs/heads/main/SILENTEXPLOITS9999"))()
    end
})

ExploitsTab:Button({
    Title = "🔥 LASER MAP",
    Desc = "Laser Work (All Game)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/silentscript1/Laser_Glitch100-/refs/heads/main/Bysilentcrak"))()
    end
})

ExploitsTab:Button({
    Title = "🕵️ ESP PLAYER",
    Desc = "Menampilkan lokasi player melalui dinding dan jarak jauh",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/silentscript1/Bringpart/refs/heads/main/Esp-PlayerHub"))()
    end
})

ExploitsTab:Button({
    Title = "🎯 AIMBOT",
    Desc = "Membantu mengunci target secara otomatis",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/silentteam-87/AIMLOCK-1x1xAIMBOT/refs/heads/main/silentganteng"))()
    end
})

ExploitsTab:Button({
    Title = "🕊 FLY PLAYER",
    Desc = "Free fly movement system",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/silentteam-87/Fly-GuiV2/refs/heads/main/silentexploitshub"))()
    end
})

-- ============================================================
-- SETTING TAB
-- ============================================================
local SettingTab = MainWindow:Tab({ Title = "SETTING", Icon = "zap" })

local AntiAFKEnabled = false
SettingTab:Toggle({
    Title = "ANTI AFK",
    Desc = "Anti kick saat idle",
    Callback = function(enabled)
        AntiAFKEnabled = enabled
        if enabled then
            for _, connection in pairs(getconnections(LocalPlayer.Idled)) do
                connection:Disable()
            end
            WindUI:Notify({ Title = "SETTING", Content = "ANTI AFK AKTIF", Duration = 3 })
        end
    end
})

SettingTab:Button({
    Title = "RESET CHARACTER",
    Desc = "Respawn cepat",
    Callback = function()
        if LocalPlayer.Character then
            LocalPlayer.Character:BreakJoints()
        end
    end
})

SettingTab:Button({
    Title = "REJOIN SERVER",
    Desc = "Masuk ulang server",
    Callback = function()
        game:GetService("TeleportService"):Teleport(game.PlaceId, LocalPlayer)
    end
})

SettingTab:Button({
    Title = "SAFE MODE",
    Desc = "Reset semua efek ke normal",
    Callback = function()
        local character = LocalPlayer.Character
        if character then
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            if humanoid then
                humanoid.WalkSpeed = 16
                humanoid.JumpPower = 50
                humanoid.Health = 100
                humanoid.MaxHealth = 100
            end
            for _, part in pairs(character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.Transparency = 0
                    part.CanCollide = true
                end
            end
        end
        workspace.CurrentCamera.FieldOfView = 70
        Lighting.Brightness = 2
    end
})

-- ============================================================
-- EXTRA TAB
-- ============================================================
local ExtraTab = MainWindow:Tab({ Title = "EXTRA", Icon = "package" })

ExtraTab:Button({
    Title = "🕺 ANIMATION",
    Desc = "Animasi karakter",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/silentteam-87/Animationz/refs/heads/main/SILENTZZTEAM"))()
    end
})

ExtraTab:Button({
    Title = "🕺 EMOTE KARAKTER",
    Desc = "Emote karakter",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-7yd7-I-Emote-Script-48024"))()
    end
})

ExtraTab:Button({
    Title = "👤 COPY AVATAR",
    Desc = "Copy avatar player",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Nearastro/Nearastro/refs/heads/main/00CopyAvaFE.lua"))()
    end
})

ExtraTab:Button({
    Title = "🎵 MUSIC PLAYER",
    Desc = "Play music by ID",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/silentteam-87/Music-Player/refs/heads/main/silentexploit"))()
    end
})

ExtraTab:Button({
    Title = "🕊 FLY GUI",
    Desc = "Terbang bebas",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Fly-V3-50586"))()
    end
})

ExtraTab:Button({
    Title = "🔒 SHIFTLOCK MOBILE",
    Desc = "Shiftlock kontrol",
    Callback = function()
        loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Mobile-Shiftlock-217580"))()
    end
})

ExtraTab:Button({
    Title = "🦘 JUMP BUTTON",
    Desc = "Setting Jump",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/silentteam-87/Silent/refs/heads/main/JumpButon"))()
    end
})

-- ============================================================
-- OTHERS TAB
-- ============================================================
local OthersTab = MainWindow:Tab({ Title = "OTHERS", Icon = "move" })

OthersTab:Button({
    Title = "🌌 LASER SKYBOX",
    Desc = "Mengubah langit menjadi tema laser neon yang keren",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/silentscript1/Skybox/refs/heads/main/SilentExploits"))()
    end
})

OthersTab:Button({
    Title = "💃 ANIMATION V2",
    Desc = "Koleksi animasi premium untuk karakter Roblox",
    Callback = function()
        loadstring(game:HttpGet("https://github.com/silentteam-87/SILENTEXPLOITS9/blob/main/ANNIMATIONV2"))()
    end
})

OthersTab:Button({
    Title = "👑 TITLE VISUAL",
    Desc = "Hanya Title Visual Tidak Bisa Dilihat Player Lain",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/silentscript1/SilentTitle/refs/heads/main/Exploiter"))()
    end
})

OthersTab:Button({
    Title = "🎯 HITBOX",
    Desc = "Memperbesar hitbox target agar lebih mudah dikenai",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/silentscript1/HitboxEsp/refs/heads/main/Hitbox"))()
    end
})

OthersTab:Button({
    Title = "🕺 EMOTE",
    Desc = "Animasi karakter keren & smooth",
    Callback = function()
        loadstring(game:HttpGet("https://fayintz.my.id/api/loader/FE-Animation"))()
    end
})

OthersTab:Button({
    Title = "🏃 ANIMASI",
    Desc = "Animasi karakter keren & smooth",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/FayintXhub/Animasi-Emote/refs/heads/main/No-Visual"))()
    end
})

OthersTab:Button({
    Title = "👥 COPY AVATAR",
    Desc = "Copy Avatar Chatalog",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Nearastro/Nearastro/refs/heads/main/00CopyAvaFE.lua"))()
    end
})

OthersTab:Button({
    Title = "⚡ TAP SIMULATOR",
    Desc = "Simulator Games",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/silentteam-87/TAP-SIMULATOR1x1x/refs/heads/main/silenthub.Myid"))()
    end
})

OthersTab:Button({
    Title = "🎯 BLOOD STRIKE",
    Desc = "BLOOD STRIKE AIMBOT SNIPER",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/silentteam-87/BloodStrike-100Sniper/refs/heads/main/silenthub.myid"))()
    end
})

-- ============================================================
-- SERVER TAB
-- ============================================================
local ServerTab = MainWindow:Tab({ Title = "SERVER", Icon = "server" })

local ServerInfo = ServerTab:Paragraph({
    Title = "SERVER ACTIVE...",
    Desc = "Mengambil data server..."
})

task.spawn(function()
    while task.wait(2) do
        local playerCount = #game.Players:GetPlayers()
        local maxPlayers = game.Players.MaxPlayers
        local jobId = game.JobId
        ServerInfo:SetDesc("Players: " .. playerCount .. "/" .. maxPlayers .. "\nJob ID: " .. jobId)
    end
end)

-- ============================================================
-- NOTIFICATION
-- ============================================================
WindUI:Notify({
    Title = "ZAINL PREMIUM",
    Content = "Welcome to Zainl Exploits | Crack By Fiqzr7",
    Duration = 4
})
