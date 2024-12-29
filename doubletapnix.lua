-- Script para ativar/desativar o Doubletap com a tecla "T" no Nixware

-- Variável para controlar o estado do Doubletap
local doubletap_active = false

-- Função para alternar o estado do Doubletap
local function toggle_doubletap()
    doubletap_active = not doubletap_active
    if doubletap_active then
        print("[Nixware] Doubletap ativado!")
        -- Ativar o Doubletap
        exploits.doubletap_enable(true)
    else
        print("[Nixware] Doubletap desativado!")
        -- Desativar o Doubletap
        exploits.doubletap_enable(false)
    end
end

-- Callback para verificar se a tecla "T" foi pressionada
callbacks.add(e_callbacks.PAINT, function()
    if input.is_key_pressed(e_keys.T) then
        toggle_doubletap()
    end
end)
